import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dokan_demo/core/cache/auth_cache_manager.dart';
import 'package:dokan_demo/core/endpoints/api_endpoints.dart';
import 'package:dokan_demo/domain/edit_profile_response/edit_profile_response.dart';
import 'package:dokan_demo/domain/error_response/error_response.dart';
import 'package:dokan_demo/domain/profile_response/profile_response.dart';
import 'package:dokan_demo/domain/validate_response/validate_response.dart';
import 'package:dokan_demo/presentation/navigation/page_name.dart';
import 'package:dokan_demo/presentation/navigation/route.dart';

abstract class UserApiService {
  UserApiService() {
    client.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      String? token = await AuthCacheManager.getToken();
      options.headers["Accept"] = "application/json";
      options.headers["Authorization"] = "Bearer $token";
      return handler.next(options);
    }, onError: (error, handler) async {
      if (error.response?.statusCode == 401) {
        if (!isRefreshing) {
          isRefreshing = true;
          final checkedAccessToken = await validateToken();
          if (checkedAccessToken != null) {
            client.options.headers["Authorization"] =
                "Bearer $checkedAccessToken";
            return handler.resolve(await client.fetch(error.requestOptions));
          }
        }
      }
      return handler.next(error);
    }));
  }

  bool isRefreshing = false;

  Future<String?> validateToken() async {
    try {
      String? token = await AuthCacheManager.getToken();
      var headers = {'Authorization': 'Bearer $token'};
      print("validation_token_call");
      Response response = await client.get(ApiEndpoints.validationUrl,
          options: Options(headers: headers));
      print("validation_token_status ->${response.statusCode}");
      var result = ValidateResponse.fromJson(response.data);
      if (result.data?.status == 200) {
        return token;
      }
      return null;
    } catch (e) {
      //AuthCacheManager.signOut();
      isRefreshing = false;
      router.go(PagesName.loginPage.path);
    }
    return null;
  }

  Dio client = Dio(BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      responseType: ResponseType.json,
      contentType: "application/json"));

  Future<Either<ErrorResponse, List<ProfileResponse>>> getUserProfile();

  Future<Either<ErrorResponse, List<EditProfileResponse>>> editProfileInfo(
      {required String name,
      required String firstName,
      required String lastName,
      required String email,
      required String description});
}
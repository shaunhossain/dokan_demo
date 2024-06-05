
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dokan_demo/core/endpoints/api_endpoints.dart';
import 'package:dokan_demo/domain/error_response/error_response.dart';
import 'package:dokan_demo/domain/login_response/login_response.dart';
import 'package:dokan_demo/domain/registration_response/registration_response.dart';
import 'package:injectable/injectable.dart';

import 'auth_api_service.dart';

@LazySingleton(as: AuthApiService)
class IAuthApiService extends AuthApiService {
  ErrorResponse checkResponseError(DioException err) {
    if (err.type == DioExceptionType.badResponse) {
      var errorData = err.response?.data;
      var errorModel = ErrorResponse.fromJson(errorData);
      return errorModel;
    } else {
      return const ErrorResponse();
    }
  }

  @override
  Future<Either<ErrorResponse, List<LoginResponse>>> login({required String userName, required String password}) async {
    try {
      var loginInfo = FormData.fromMap({
        'username': userName,
        'password': password,
      });
      Response response = await client
          .post(ApiEndpoints.loginUrl, data: loginInfo);
      print("login_response ->$response");
      var result = LoginResponse.fromJson(response.data);
      return right([result]);
    } on DioException catch (e) {
      print("login_error ->$e");
      return left(checkResponseError(e));
    }
  }

  @override
  Future<Either<ErrorResponse, List<RegistrationResponse>>> signUp({required String username, required String email, required String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}

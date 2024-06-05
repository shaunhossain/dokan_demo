import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dokan_demo/core/endpoints/api_endpoints.dart';
import 'package:dokan_demo/data/api_service/user_api_service.dart';
import 'package:dokan_demo/domain/edit_profile_response/edit_profile_response.dart';
import 'package:dokan_demo/domain/error_response/error_response.dart';
import 'package:dokan_demo/domain/profile_response/profile_response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserApiService)
class IUserApiService extends UserApiService {
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
  Future<Either<ErrorResponse, List<EditProfileResponse>>> editProfileInfo(
      {required String name,
      required String firstName,
      required String lastName,
      required String email,
      required String description}) async {
    try {
      var registrationInfo = {
        "name": name,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "description": description
      };
      Response response = await client.post(ApiEndpoints.updateUserProfileUrl,
          data: registrationInfo);
      var result = EditProfileResponse.fromJson(response.data);
      return right([result]);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }

  @override
  Future<Either<ErrorResponse, List<ProfileResponse>>> getUserProfile() async {
    try {
      Response response = await client.get(
        ApiEndpoints.userProfileUrl,
      );
      var result = ProfileResponse.fromJson(response.data);
      return right([result]);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }
}

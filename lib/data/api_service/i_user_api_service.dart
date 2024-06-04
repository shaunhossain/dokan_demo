import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dokan_demo/data/api_service/user_api_service.dart';
import 'package:dokan_demo/domain/edit_profile_response/edit_profile_response.dart';
import 'package:dokan_demo/domain/error_response/error_response.dart';
import 'package:dokan_demo/domain/login_response/login_response.dart';
import 'package:dokan_demo/domain/profile_response/profile_response.dart';
import 'package:dokan_demo/domain/registration_response/registration_response.dart';
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
  Future<Either<ErrorResponse, List<EditProfileResponse>>> editProfileInfo({required String name, required String firstName, required String lastName, required String email, required String description}) {
    // TODO: implement editProfileInfo
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorResponse, List<ProfileResponse>>> getUserProfile() {
    // TODO: implement getUserProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorResponse, List<LoginResponse>>> login({required String userName, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorResponse, List<RegistrationResponse>>> signUp({required String username, required String email, required String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

}

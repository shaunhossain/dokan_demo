import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dokan_demo/core/endpoints/api_endpoints.dart';
import 'package:dokan_demo/domain/error_response/error_response.dart';
import 'package:dokan_demo/domain/login_response/login_response.dart';
import 'package:dokan_demo/domain/registration_error_response/registration_error_response.dart';
import 'package:dokan_demo/domain/registration_response/registration_response.dart';

abstract class AuthApiService {
  Dio client = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 120),
      receiveTimeout: const Duration(seconds: 120),
      responseType: ResponseType.json,
      contentType: "application/json"
    )
  );

  Future<Either<ErrorResponse, List<LoginResponse>>> login(
      {required String userName,
        required String password});

  Future<Either<RegistrationErrorResponse, List<RegistrationResponse>>> signUp(
      {required String username,
        required String email,
        required String password});
}

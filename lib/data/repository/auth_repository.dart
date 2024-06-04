import 'package:dartz/dartz.dart';
import 'package:dokan_demo/data/api_service/auth_api_service.dart';
import 'package:dokan_demo/domain/error_response/error_response.dart';
import 'package:dokan_demo/domain/login_response/login_response.dart';
import 'package:dokan_demo/domain/registration_response/registration_response.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  final AuthApiService authApiService;

  AuthRepository(this.authApiService);

  Future<Either<ErrorResponse, List<LoginResponse>>> login(
      {required String userName,
        required String password});
  Future<Either<ErrorResponse, List<RegistrationResponse>>> signUp(
      {required String username,
        required String email,
        required String password});
}

@LazySingleton(as: AuthRepository)
class IAuthRepository extends AuthRepository {
  IAuthRepository(super.authApiService);

  @override
  Future<Either<ErrorResponse, List<LoginResponse>>> login({required String userName, required String password}) {
    return authApiService.login(userName: userName, password: password);
  }

  @override
  Future<Either<ErrorResponse, List<RegistrationResponse>>> signUp({required String username, required String email, required String password}) {
    return authApiService.signUp(username: username, email: email, password: password);
  }


}

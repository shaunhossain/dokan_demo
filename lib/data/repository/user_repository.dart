import 'package:dartz/dartz.dart';
import 'package:dokan_demo/data/api_service/user_api_service.dart';
import 'package:dokan_demo/domain/edit_profile_response/edit_profile_response.dart';
import 'package:dokan_demo/domain/error_response/error_response.dart';
import 'package:dokan_demo/domain/login_response/login_response.dart';
import 'package:dokan_demo/domain/profile_response/profile_response.dart';
import 'package:dokan_demo/domain/registration_response/registration_response.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

abstract class UserRepository {
  final UserApiService userApiService;

  UserRepository(this.userApiService);


  Future<Either<ErrorResponse, List<ProfileResponse>>> getUserProfile();

  Future<Either<ErrorResponse, List<EditProfileResponse>>> editProfileInfo(
      {required String name,
        required String firstName,
        required String lastName,
        required String email,
        required String description});
  Future<Either<ErrorResponse, List<LoginResponse>>> login(
      {required String userName,
        required String password});
  Future<Either<ErrorResponse, List<RegistrationResponse>>> signUp(
      {required String username,
        required String email,
        required String password});
}

/**
 * UserRepository implementation
 */

@LazySingleton(as: UserRepository)
class IUserRepository extends UserRepository {
  IUserRepository(super.userApiService);

  @override
  Future<Either<ErrorResponse, List<EditProfileResponse>>> editProfileInfo({required String name, required String firstName, required String lastName, required String email, required String description}) {
    return userApiService.editProfileInfo(name: name, firstName: firstName, lastName: lastName, email: email, description: description);
  }

  @override
  Future<Either<ErrorResponse, List<ProfileResponse>>> getUserProfile() {
    return userApiService.getUserProfile();
  }

  @override
  Future<Either<ErrorResponse, List<LoginResponse>>> login({required String userName, required String password}) {
    return userApiService.login(userName: userName, password: password);
  }

  @override
  Future<Either<ErrorResponse, List<RegistrationResponse>>> signUp({required String username, required String email, required String password}) {
    return userApiService.signUp(username: username, email: email, password: password);
  }
}

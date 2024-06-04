import 'package:dartz/dartz.dart';
import 'package:dokan_demo/data/api_service/user_api_service.dart';
import 'package:dokan_demo/domain/edit_profile_response/edit_profile_response.dart';
import 'package:dokan_demo/domain/error_response/error_response.dart';
import 'package:dokan_demo/domain/profile_response/profile_response.dart';
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
}

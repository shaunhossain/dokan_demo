part of 'user_profile_bloc.dart';

@freezed
class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.requestProfileInfo() = _RequestProfileInfo;

  const factory UserProfileEvent.editProfileInfo({
    required String name,
    required String firstName,
    required String lastName,
    required String email,
    required String description
  }) = _EditProfileData;
}

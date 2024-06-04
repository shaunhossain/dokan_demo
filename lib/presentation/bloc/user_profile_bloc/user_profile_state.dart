part of 'user_profile_bloc.dart';

enum UserProfileStatus {
  initial,
  loading,
  success,
  editProfileSuccess,
  updateSocialSuccess,
  error;

  bool get isInitial => this == UserProfileStatus.initial;
  bool get isLoading => this == UserProfileStatus.loading;
  bool get isSuccess => this == UserProfileStatus.success;
  bool get isEditProfileSuccess => this == UserProfileStatus.editProfileSuccess;
  bool get isUpdateSocialSuccess => this == UserProfileStatus.updateSocialSuccess;
  bool get isFailure => this == UserProfileStatus.error;
}

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState({
    @Default(UserProfileStatus.initial) UserProfileStatus status,
    @Default('') String imagePickerError,
    ErrorResponse? errorResponse,
   ProfileResponse? profile,
  }) = _UserProfileState;

  factory UserProfileState.fromJson(Map<String, dynamic> json) =>
      _$UserProfileStateFromJson(json);
}
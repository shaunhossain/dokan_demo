// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileStateImpl _$$UserProfileStateImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileStateImpl(
      status: $enumDecodeNullable(_$UserProfileStatusEnumMap, json['status']) ??
          UserProfileStatus.initial,
      imagePickerError: json['imagePickerError'] as String? ?? '',
      errorResponse: json['errorResponse'] == null
          ? null
          : ErrorResponse.fromJson(
              json['errorResponse'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : ProfileResponse.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileStateImplToJson(
        _$UserProfileStateImpl instance) =>
    <String, dynamic>{
      'status': _$UserProfileStatusEnumMap[instance.status]!,
      'imagePickerError': instance.imagePickerError,
      'errorResponse': instance.errorResponse,
      'profile': instance.profile,
    };

const _$UserProfileStatusEnumMap = {
  UserProfileStatus.initial: 'initial',
  UserProfileStatus.loading: 'loading',
  UserProfileStatus.success: 'success',
  UserProfileStatus.editProfileSuccess: 'editProfileSuccess',
  UserProfileStatus.updateSocialSuccess: 'updateSocialSuccess',
  UserProfileStatus.error: 'error',
};

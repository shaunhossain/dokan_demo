// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateImpl _$$AuthStateImplFromJson(Map<String, dynamic> json) =>
    _$AuthStateImpl(
      status: $enumDecodeNullable(_$AuthStatusEnumMap, json['status']) ??
          AuthStatus.initial,
      isAuthenticated: json['isAuthenticated'] as bool? ?? false,
      errorResponse: json['errorResponse'] == null
          ? null
          : ErrorResponse.fromJson(
              json['errorResponse'] as Map<String, dynamic>),
      loginResponse: json['loginResponse'] == null
          ? null
          : LoginResponse.fromJson(
              json['loginResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthStateImplToJson(_$AuthStateImpl instance) =>
    <String, dynamic>{
      'status': _$AuthStatusEnumMap[instance.status]!,
      'isAuthenticated': instance.isAuthenticated,
      'errorResponse': instance.errorResponse,
      'loginResponse': instance.loginResponse,
    };

const _$AuthStatusEnumMap = {
  AuthStatus.initial: 'initial',
  AuthStatus.loading: 'loading',
  AuthStatus.success: 'success',
  AuthStatus.error: 'error',
};

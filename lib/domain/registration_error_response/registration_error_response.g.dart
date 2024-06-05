// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationErrorResponseImpl _$$RegistrationErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationErrorResponseImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegistrationErrorResponseImplToJson(
        _$RegistrationErrorResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

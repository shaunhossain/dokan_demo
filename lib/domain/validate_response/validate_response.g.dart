// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateResponseImpl _$$ValidateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateResponseImpl(
      code: json['code'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ValidateResponseImplToJson(
        _$ValidateResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

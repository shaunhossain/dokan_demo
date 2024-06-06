// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductStateImpl _$$ProductStateImplFromJson(Map<String, dynamic> json) =>
    _$ProductStateImpl(
      status: $enumDecodeNullable(_$ProductStatusEnumMap, json['status']) ??
          ProductStatus.initial,
      errorMessage: json['errorMessage'] as String? ?? '',
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductStateImplToJson(_$ProductStateImpl instance) =>
    <String, dynamic>{
      'status': _$ProductStatusEnumMap[instance.status]!,
      'errorMessage': instance.errorMessage,
      'products': instance.products,
    };

const _$ProductStatusEnumMap = {
  ProductStatus.initial: 'initial',
  ProductStatus.loading: 'loading',
  ProductStatus.success: 'success',
  ProductStatus.error: 'error',
};

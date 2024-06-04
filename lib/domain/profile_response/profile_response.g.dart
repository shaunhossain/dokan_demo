// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      url: json['url'] as String?,
      description: json['description'] as String?,
      link: json['link'] as String?,
      slug: json['slug'] as String?,
      avatarUrls: json['avatar_urls'] == null
          ? null
          : AvatarUrls.fromJson(json['avatar_urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'description': instance.description,
      'link': instance.link,
      'slug': instance.slug,
      'avatar_urls': instance.avatarUrls,
    };

_$AvatarUrlsImpl _$$AvatarUrlsImplFromJson(Map<String, dynamic> json) =>
    _$AvatarUrlsImpl(
      the24: json['24'] as String?,
      the48: json['48'] as String?,
      the96: json['96'] as String?,
    );

Map<String, dynamic> _$$AvatarUrlsImplToJson(_$AvatarUrlsImpl instance) =>
    <String, dynamic>{
      '24': instance.the24,
      '48': instance.the48,
      '96': instance.the96,
    };

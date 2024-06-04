// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditProfileResponseImpl _$$EditProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EditProfileResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      name: json['name'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      url: json['url'] as String?,
      description: json['description'] as String?,
      link: json['link'] as String?,
      locale: json['locale'] as String?,
      nickname: json['nickname'] as String?,
      slug: json['slug'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      registeredDate: json['registered_date'] == null
          ? null
          : DateTime.parse(json['registered_date'] as String),
      capabilities: json['capabilities'] == null
          ? null
          : Capabilities.fromJson(json['capabilities'] as Map<String, dynamic>),
      extraCapabilities: json['extra_capabilities'] == null
          ? null
          : ExtraCapabilities.fromJson(
              json['extra_capabilities'] as Map<String, dynamic>),
      avatarUrls: json['avatar_urls'] == null
          ? null
          : AvatarUrls.fromJson(json['avatar_urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditProfileResponseImplToJson(
        _$EditProfileResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'url': instance.url,
      'description': instance.description,
      'link': instance.link,
      'locale': instance.locale,
      'nickname': instance.nickname,
      'slug': instance.slug,
      'roles': instance.roles,
      'registered_date': instance.registeredDate?.toIso8601String(),
      'capabilities': instance.capabilities,
      'extra_capabilities': instance.extraCapabilities,
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

_$CapabilitiesImpl _$$CapabilitiesImplFromJson(Map<String, dynamic> json) =>
    _$CapabilitiesImpl(
      read: json['read'] as bool?,
      level0: json['level_0'] as bool?,
      subscriber: json['subscriber'] as bool?,
    );

Map<String, dynamic> _$$CapabilitiesImplToJson(_$CapabilitiesImpl instance) =>
    <String, dynamic>{
      'read': instance.read,
      'level_0': instance.level0,
      'subscriber': instance.subscriber,
    };

_$ExtraCapabilitiesImpl _$$ExtraCapabilitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$ExtraCapabilitiesImpl(
      subscriber: json['subscriber'] as bool?,
    );

Map<String, dynamic> _$$ExtraCapabilitiesImplToJson(
        _$ExtraCapabilitiesImpl instance) =>
    <String, dynamic>{
      'subscriber': instance.subscriber,
    };

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_response.freezed.dart';
part 'edit_profile_response.g.dart';

@freezed
class EditProfileResponse with _$EditProfileResponse {
  const factory EditProfileResponse({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "username")
    String? username,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "first_name")
    String? firstName,
    @JsonKey(name: "last_name")
    String? lastName,
    @JsonKey(name: "email")
    String? email,
    @JsonKey(name: "url")
    String? url,
    @JsonKey(name: "description")
    String? description,
    @JsonKey(name: "link")
    String? link,
    @JsonKey(name: "locale")
    String? locale,
    @JsonKey(name: "nickname")
    String? nickname,
    @JsonKey(name: "slug")
    String? slug,
    @JsonKey(name: "roles")
    List<String>? roles,
    @JsonKey(name: "registered_date")
    DateTime? registeredDate,
    @JsonKey(name: "capabilities")
    Capabilities? capabilities,
    @JsonKey(name: "extra_capabilities")
    ExtraCapabilities? extraCapabilities,
    @JsonKey(name: "avatar_urls")
    AvatarUrls? avatarUrls,
  }) = _EditProfileResponse;

  factory EditProfileResponse.fromJson(Map<String, dynamic> json) => _$EditProfileResponseFromJson(json);
}

@freezed
class AvatarUrls with _$AvatarUrls {
  const factory AvatarUrls({
    @JsonKey(name: "24")
    String? the24,
    @JsonKey(name: "48")
    String? the48,
    @JsonKey(name: "96")
    String? the96,
  }) = _AvatarUrls;

  factory AvatarUrls.fromJson(Map<String, dynamic> json) => _$AvatarUrlsFromJson(json);
}

@freezed
class Capabilities with _$Capabilities {
  const factory Capabilities({
    @JsonKey(name: "read")
    bool? read,
    @JsonKey(name: "level_0")
    bool? level0,
    @JsonKey(name: "subscriber")
    bool? subscriber,
  }) = _Capabilities;

  factory Capabilities.fromJson(Map<String, dynamic> json) => _$CapabilitiesFromJson(json);
}

@freezed
class ExtraCapabilities with _$ExtraCapabilities {
  const factory ExtraCapabilities({
    @JsonKey(name: "subscriber")
    bool? subscriber,
  }) = _ExtraCapabilities;

  factory ExtraCapabilities.fromJson(Map<String, dynamic> json) => _$ExtraCapabilitiesFromJson(json);
}

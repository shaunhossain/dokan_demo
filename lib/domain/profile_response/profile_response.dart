import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "url")
    String? url,
    @JsonKey(name: "description")
    String? description,
    @JsonKey(name: "link")
    String? link,
    @JsonKey(name: "slug")
    String? slug,
    @JsonKey(name: "avatar_urls")
    AvatarUrls? avatarUrls,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);
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

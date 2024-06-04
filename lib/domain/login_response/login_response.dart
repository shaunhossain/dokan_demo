import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: "token")
    String? token,
    @JsonKey(name: "user_email")
    String? userEmail,
    @JsonKey(name: "user_nicename")
    String? userNicename,
    @JsonKey(name: "user_display_name")
    String? userDisplayName,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}
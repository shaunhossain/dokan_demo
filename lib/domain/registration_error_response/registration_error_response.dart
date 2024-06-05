import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_error_response.freezed.dart';
part 'registration_error_response.g.dart';

@freezed
class RegistrationErrorResponse with _$RegistrationErrorResponse {
  const factory RegistrationErrorResponse({
    @JsonKey(name: "code")
    int? code,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    Data? data,
  }) = _RegistrationErrorResponse;

  factory RegistrationErrorResponse.fromJson(Map<String, dynamic> json) => _$RegistrationErrorResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "status")
    int? status,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

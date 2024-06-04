import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_response.freezed.dart';
part 'validate_response.g.dart';

@freezed
class ValidateResponse with _$ValidateResponse {
  const factory ValidateResponse({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "data")
    Data? data,
  }) = _ValidateResponse;

  factory ValidateResponse.fromJson(Map<String, dynamic> json) => _$ValidateResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "status")
    int? status,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

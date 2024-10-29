import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'api_error_response.freezed.dart';
part 'api_error_response.g.dart';

@freezed
class ApiErrorResponse with _$ApiErrorResponse {
  const factory ApiErrorResponse({
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "message")
    String? message,
  }) = _ApiErrorResponse;

  factory ApiErrorResponse.fromJson(Map<String, dynamic> json) => _$ApiErrorResponseFromJson(json);
}

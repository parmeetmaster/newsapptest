// To parse this JSON data, do
//
//     final apiSuccessResponse = apiSuccessResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'api_success_response.freezed.dart';
part 'api_success_response.g.dart';

@freezed
abstract class ApiSuccessResponse with _$ApiSuccessResponse {
  const factory ApiSuccessResponse({
    required int statusCode,
    required String message,
    required String timeStamp,
  }) = _ApiSuccessResponse;

  factory ApiSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiSuccessResponseFromJson(json);
}

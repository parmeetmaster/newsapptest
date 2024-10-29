// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorResponseImpl _$$ApiErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiErrorResponseImpl(
      status: json['status'] as String?,
      code: json['code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ApiErrorResponseImplToJson(
        _$ApiErrorResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiSuccessResponseImpl _$$ApiSuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiSuccessResponseImpl(
      statusCode: (json['statusCode'] as num).toInt(),
      message: json['message'] as String,
      timeStamp: json['timeStamp'] as String,
    );

Map<String, dynamic> _$$ApiSuccessResponseImplToJson(
        _$ApiSuccessResponseImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'timeStamp': instance.timeStamp,
    };

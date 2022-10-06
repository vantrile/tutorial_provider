// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiException _$ApiExceptionFromJson(Map<String, dynamic> json) => ApiException(
      code: json['code'] as int?,
      data: json['data'] as Map<String, dynamic>?,
      message: json['message'] as String?,
      status: json['status'] as int?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$ApiExceptionToJson(ApiException instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
      'reason': instance.reason,
    };

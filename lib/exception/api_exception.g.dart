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

Map<String, dynamic> _$ApiExceptionToJson(ApiException instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('message', instance.message);
  writeNotNull('status', instance.status);
  writeNotNull('data', instance.data);
  writeNotNull('reason', instance.reason);
  return val;
}

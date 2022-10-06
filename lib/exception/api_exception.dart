import 'package:json_annotation/json_annotation.dart';

part 'api_exception.g.dart';
@JsonSerializable()
class ApiException{
  @JsonKey(name: "code")
  final int? code;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "status")
  final int? status;
  @JsonKey(name: "data")
  final Map<String, dynamic>? data;
  @JsonKey(name: "reason")
  final String? reason;
  ApiException({this.code, this.data, this.message, this.status, this.reason});

  factory ApiException.fromJson(Map<String,dynamic> json) => _$ApiExceptionFromJson(json);
  Map<String,dynamic> toJson() => _$ApiExceptionToJson(this);
}
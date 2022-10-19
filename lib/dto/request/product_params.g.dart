// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductParams _$ProductParamsFromJson(Map<String, dynamic> json) =>
    ProductParams(
      categoryId: json['category_id'] as int,
      pageNumber: json['page'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$ProductParamsToJson(ProductParams instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'page': instance.pageNumber,
      'size': instance.size,
    };

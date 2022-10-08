// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDTO _$CategoryDTOFromJson(Map<String, dynamic> json) => CategoryDTO(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      icon: json['icon'] as String,
      path: json['path'] as String?,
      parentId: json['parent_id'] as int?,
      totalProduct: json['total_product'] as int?,
    );

Map<String, dynamic> _$CategoryDTOToJson(CategoryDTO instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'slug': instance.slug,
    'icon': instance.icon,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('total_product', instance.totalProduct);
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) => ProductDTO(
      id: json['id'] as int?,
      categoryId: json['category_id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      marketPrice: json['market_price'] as String?,
      imageProduct: json['image'] as String?,
    );

Map<String, dynamic> _$ProductDTOToJson(ProductDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('category_id', instance.categoryId);
  writeNotNull('name', instance.name);
  writeNotNull('price', instance.price);
  writeNotNull('market_price', instance.marketPrice);
  writeNotNull('image', instance.imageProduct);
  return val;
}

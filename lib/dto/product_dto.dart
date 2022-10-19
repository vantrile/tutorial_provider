import 'package:json_annotation/json_annotation.dart';

part 'product_dto.g.dart';

@JsonSerializable()
class ProductDTO {

  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "category_id")
  final int? categoryId;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "price")
  final double? price;
  @JsonKey(name: "market_price")
  final String? marketPrice;
  @JsonKey(name: "image")
  final String? imageProduct;

  ProductDTO({required this.id, required this.categoryId, required this.name,this.price, this.marketPrice, this.imageProduct});

  factory ProductDTO.fromJson(Map<String,dynamic> json) => _$ProductDTOFromJson(json);

}
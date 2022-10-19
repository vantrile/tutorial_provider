import 'package:json_annotation/json_annotation.dart';

part 'product_params.g.dart';

@JsonSerializable()
class ProductParams {
 @JsonKey(name: "category_id")
 final int categoryId;
 @JsonKey(name: "page")
 final int pageNumber;
 @JsonKey(name: "size")
 final int size;

 ProductParams({required this.categoryId, required this.pageNumber, required this.size});

 Map<String, dynamic> toJson() => _$ProductParamsToJson(this);
}
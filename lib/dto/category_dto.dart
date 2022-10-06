import 'package:json_annotation/json_annotation.dart';

part 'category_dto.g.dart';

@JsonSerializable()
class CategoryDTO{
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "slug")
  final String slug;
  @JsonKey(name: "icon")
  final String icon;

  CategoryDTO({required this.id, required this.name, required this.slug, required this.icon});


  factory CategoryDTO.fromJson(Map<String,dynamic> json) => _$CategoryDTOFromJson(json);

}
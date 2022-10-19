class ProductEntity {
  final int? id;
  final int? categoryId;
  final String? name;
  final double? price;
  final String? marketPrice;
  final String? imageProduct;

  ProductEntity(
      {this.id,
      this.categoryId,
      this.name,
      this.price,
      this.marketPrice,
      this.imageProduct});
}

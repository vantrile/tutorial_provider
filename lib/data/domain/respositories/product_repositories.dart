import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/dto/request/product_params.dart';
import 'package:tutorial_provider/services/products_service.dart';

import '../entities/product_entity.dart';

@injectable
class ProductRepositories {
  final ProductService service;

  ProductRepositories(this.service);

  Future<List<ProductEntity>> getListProduct(ProductParams params) async {
    final data = await service.getProducts(params);
    return data
        .map((e) => ProductEntity(
            id: e.id,
            categoryId: e.categoryId,
            name: e.name,
            price: e.price,
            marketPrice: e.marketPrice,
            imageProduct: e.imageProduct))
        .toList();
  }
}

import 'package:injectable/injectable.dart';

import 'package:tutorial_provider/dto/request/product_params.dart';

import '../entities/product_entity.dart';
import '../respositories/product_repositories.dart';

@injectable
class GetProductUseCase {
  ProductRepositories repositories;

  GetProductUseCase({required this.repositories});

  Future<List<ProductEntity>> execute(int categoryId) async{
    ProductParams prams = ProductParams(categoryId: categoryId, pageNumber: 1, size: 20);
    return await repositories.getListProduct(prams);
  }
}
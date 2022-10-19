import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/base_service/base_service.dart';
import 'package:tutorial_provider/base_service/client.dart';
import 'package:tutorial_provider/dto/request/product_params.dart';
import 'package:tutorial_provider/services/api_endpoint.dart';

import '../dto/product_dto.dart';

@injectable
class ProductService extends BaseService {
  ProductService(Client client) : super(client);

  Future<List<ProductDTO>> getProducts(ProductParams params) async {
    client.dio.options.baseUrl = BaseUrl.url;
    final data = await get(ProductApi.getProductList, queryParameters: params.toJson());
    return (data["data"] as List).map((e) => ProductDTO.fromJson(e)).toList();
  }
}

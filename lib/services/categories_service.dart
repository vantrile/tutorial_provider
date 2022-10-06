import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/base_service/base_service.dart';
import 'package:tutorial_provider/services/api_endpoint.dart';

import '../dto/category_dto.dart';

@injectable
class CategoryService extends BaseService {
  CategoryService(super.client);

  Future<CategoryDTO> getCategories() async {
    client.dio.options.baseUrl = BaseUrl.url;
    final data = await get(CategoryApi.getCategory);
    return CategoryDTO.fromJson(data);
  }
}

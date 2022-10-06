import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/services/categories_service.dart';

import '../entities/category_entity.dart';

@injectable
class CategoryRepositories {
  final CategoryService service;
  CategoryRepositories(this.service);

  Future<CategoryEntity> getCategories() async{

    final data = await service.getCategories();
    return CategoryEntity(id: data.id, name: data.name, slug: data.slug, icon: data.icon);
  }

}

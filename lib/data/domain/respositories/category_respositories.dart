import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/services/categories_service.dart';

import '../entities/category_entity.dart';

@injectable
class CategoryRepositories {
  final CategoryService service;

  CategoryRepositories(this.service);

  Future<List<CategoryEntity>> getCategories() async {
    final data = await service.getCategories();
    return data
        .map((e) =>
            CategoryEntity(id: e.id, name: e.name, slug: e.slug, icon: e.icon))
        .toList();
  }
}

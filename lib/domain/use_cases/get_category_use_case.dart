import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/domain/respositories/category_respositories.dart';


import '../entities/category_entity.dart';

@injectable
class GetCategoryUseCase {
  CategoryRepositories categoryRepositories;

  GetCategoryUseCase(this.categoryRepositories);

  Future<List<CategoryEntity>> execute() async {
    return categoryRepositories.getCategories();
  }
}

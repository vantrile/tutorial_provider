import 'package:injectable/injectable.dart';


import '../entities/category_entity.dart';
import '../respositories/category_respositories.dart';

@injectable
class GetCategoryUseCase {
  CategoryRepositories categoryRepositories;

  GetCategoryUseCase(this.categoryRepositories);

  Future<List<CategoryEntity>> execute() async {
    return categoryRepositories.getCategories();
  }
}

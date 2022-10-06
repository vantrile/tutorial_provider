import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/domain/respositories/category_respositories.dart';
import 'package:tutorial_provider/dto/category_dto.dart';

import '../entities/category_entity.dart';

@injectable
class GetCategoryUseCase {
  CategoryRepositories categoryRepositories;

  GetCategoryUseCase(this.categoryRepositories);

  Future<CategoryEntity> execute() async {
    return await categoryRepositories.getCategories();
  }
}

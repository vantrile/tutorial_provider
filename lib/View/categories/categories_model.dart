import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/base_state/base_model.dart';
import 'package:tutorial_provider/base_state/event.dart';
import 'package:tutorial_provider/enum.dart';

import '../../domain/entities/category_entity.dart';
import '../../domain/use_cases/get_category_use_case.dart';

@injectable
class CategoriesModel extends BaseModel {
  final GetCategoryUseCase getCategoryUseCase;
  List<CategoryEntity> listCategories = [];

  CategoriesModel({required this.getCategoryUseCase});

  @override
  bool get autoLoad => true;

  @override
  ViewState get initState => ViewState.initial;

  @override
  Future<void> executeLoadData() async {
    showProcessing();
    try {
      print("execute data categories");
      listCategories = await getCategoryUseCase.execute();

      emitEvent(SuccessEvent());
    } catch (error, stackTrace) {
      emitError(error.toString(), stackTrace: stackTrace);
    } finally {
      hideProcessing();
    }
  }
}

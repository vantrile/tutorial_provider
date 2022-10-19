import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/base_state/base_model.dart';
import 'package:tutorial_provider/domain/entities/product_entity.dart';
import 'package:tutorial_provider/domain/use_cases/get_product_use_case.dart';

import '../../base_state/event.dart';
import '../../enum.dart';

@injectable
class ProductModel extends BaseModel {
  GetProductUseCase getProductUseCase;
  List<ProductEntity> listProducts = [];

  ProductModel({required this.getProductUseCase});

  @override
  bool get autoLoad => true;

  @override
  ViewState get initState => ViewState.initial;

  @override
  Future<void> executeLoadData() async {
    try {
      int categoryId = 0;
      listProducts = await getProductUseCase.execute(categoryId);
      emitEvent(SuccessEvent());
    } catch (error, stackTrace) {
      emitError(error.toString(), stackTrace: stackTrace);
    } finally {
      // hideProcessing();
    }
  }
}

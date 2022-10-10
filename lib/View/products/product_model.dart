import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/base_state/base_model.dart';
import 'package:tutorial_provider/domain/use_cases/get_product_use_case.dart';

@injectable
class ProductModel extends BaseModel{
  GetProductUseCase getProductUseCase;
  ProductModel({required this.getProductUseCase});

}
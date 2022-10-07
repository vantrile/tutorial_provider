import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/base_state/base_model.dart';

@injectable
class HomeModel extends BaseModel{
  int count = 0;
  void updateCount(int value){
    count = value;
    loadData();

  }
}
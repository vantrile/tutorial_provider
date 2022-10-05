import 'package:flutter/cupertino.dart';
import 'package:tutorial_provider/View/main_model.dart';
import 'package:tutorial_provider/di/locator.dart';

abstract class BaseModel extends ChangeNotifier{
  final valueUpdate = ValueNotifier<int>(0);

  Future<void> loadData() async{
    print("notify data ");
    notifyListeners();
  }

}
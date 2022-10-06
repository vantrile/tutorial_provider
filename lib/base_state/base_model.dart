import 'package:flutter/cupertino.dart';

abstract class BaseModel extends ChangeNotifier{
  final valueUpdate = ValueNotifier<int>(0);

  Future<void> loadData() async{
    print("notify data ");
    notifyListeners();
  }

}
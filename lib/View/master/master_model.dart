import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/base_state/base_model.dart';
import 'package:tutorial_provider/data/enums.dart';
import 'package:tutorial_provider/enum.dart';

@injectable
class MasterModel extends BaseModel{
  MasterTap selectedTap = MasterTap.home;
  @override
  void init() {
    // TODO: implement init
    setState(ViewState.loaded,forceUpdate: true);
  }

  changeTap(MasterTap tab, bool toggle){
    selectedTap = tab;
    notifyListeners();
  }

}

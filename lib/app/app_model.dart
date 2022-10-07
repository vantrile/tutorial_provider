import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tutorial_provider/enum.dart';

import '../base_state/event.dart';

@singleton
class AppModel extends ChangeNotifier {

  late final countShopping = ValueNotifier<int>(0);
  final eventBus = ValueNotifier<Event>(Event.none());
  final showProgressDialog =
      ValueNotifier<ProgressDialogState>(ProgressDialogState(isShow: false));

  init() async {}

  void toggleProgressDialog({bool? show, ProgressDialogType? type}) {
    showProgressDialog.value = ProgressDialogState(
        isShow: show ?? !showProgressDialog.value.isShow,
        type: type ?? ProgressDialogType.processing);
    if (showProgressDialog.value.isShow) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
    notifyListeners();
  }

  emitEvent(Event event) {
    eventBus.value = event;
  }

}

class ProgressDialogState {
  final bool isShow;
  final ProgressDialogType type;

  ProgressDialogState(
      {required this.isShow, this.type = ProgressDialogType.processing});
}

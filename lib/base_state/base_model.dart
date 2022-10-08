import 'package:flutter/cupertino.dart';
import 'package:tutorial_provider/app/app_model.dart';
import 'package:tutorial_provider/di/locator.dart';
import 'package:tutorial_provider/enum.dart';

import 'event.dart';

abstract class BaseModel extends ChangeNotifier {
  final valueUpdate = ValueNotifier<int>(0);
  final event = ValueNotifier<Event>(Event.none());
  ViewState viewState = ViewState.initial;
  dynamic error;

  ViewState get initState => ViewState.initial;

  bool get autoLoad => false;

  AppModel get appModel => locator<AppModel>();

  BaseModel() {
    viewState = initState;
    init();
  }

  void init() {
    if (autoLoad) {
      loadData();
    }
  }

  Future<void> loadData({bool refresh = false}) async {
    try {
      if (!refresh) setState(ViewState.loading);
      await executeLoadData();
      setState(ViewState.loaded, forceUpdate: true);
    } catch (error, stacktrace) {
      setState(ViewState.error, error: error, stackTrace: stacktrace);
    }
  }

  Future<void> executeLoadData() async {
    return Future.value();
  }

  setState(ViewState state,
      {forceUpdate = false, dynamic error, StackTrace? stackTrace}) {
    if (!forceUpdate && viewState == state) return;
    viewState = state;
    if (viewState == ViewState.error) {
      this.error = error;
    }
  }

  emitEvent(Event event) {
    this.event.value = event;
  }

  emitError(dynamic error, {StackTrace? stackTrace}) {
    emitEvent(ErrorEvent(error: error));
    recordError(error, stackTrace);
  }

  void recordError(dynamic error, StackTrace? stackTrace) {
    print(error);
    print(stackTrace);
  }
}

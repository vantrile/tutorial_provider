import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_provider/base_state/base_model.dart';

import '../data/di/locator.dart';
import 'event.dart';

abstract class BaseState<M extends BaseModel, S extends StatefulWidget>
    extends State<S> {
  late M model;

  @override
  void initState() {
    super.initState();
    createModel();
    onModelReady();
    model.event.addListener(() {
      onEvent(model.event.value);
    });
  }

  createModel() => model = locator<M>();

  void onModelReady() {
    // Inherit function
  }

  void onRetry() {
    final model = context.read<M>();
    model.loadData();
  }

  void onEvent(Event event) {
    if (event is ErrorEvent) {
      showError(event.error);
    }
  }

  void showError(dynamic error) {
    print("error Message: ${error.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild UI");
    return ChangeNotifierProvider<M>.value(
      value: model,
      child: Consumer<M>(
          builder: (context, model, child) => buildViewByState(context, model)),
    );
  }

  buildViewByState(BuildContext context, M model) {

    print("build View by State is running");
    return Container();
  }
}

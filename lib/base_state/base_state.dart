import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_provider/base_state/base_model.dart';
import 'package:tutorial_provider/di/locator.dart';

abstract class BaseState<M extends BaseModel, S extends StatefulWidget>
    extends State<S> {
  late M model;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createModel();
    // model.valueUpdate.addListener(() {
    //   print("value update");
    // });
  }

  createModel() => model = locator<M>();

  void onRetry() {
    final model = context.read<M>();
    model.loadData();
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
    // final model = context.read<M>();
    print("build View by State is running");
    return Container();
  }
}

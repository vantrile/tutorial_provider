import 'package:flutter/material.dart';
import 'package:tutorial_provider/View/next_view/next_model.dart';
import 'package:tutorial_provider/base_state/base_state.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends BaseState<NextModel, NextScreen> {
  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }
  @override
  buildViewByState(BuildContext context, NextModel model) {
    // TODO: implement buildViewByState
    return Container();
  }
}

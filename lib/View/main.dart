import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_provider/View/home/main_model.dart';
import 'package:tutorial_provider/View/product_by_category/product.dart';
import 'package:tutorial_provider/app/app.dart';
import 'package:tutorial_provider/base_state/base_state.dart';

import '../di/locator.dart';
import '../res/routes.dart';
import 'home/home_screen.dart';

void main() async {
  await configureDependencies();
  runApp(const App());
}

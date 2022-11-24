import 'package:flutter/material.dart';
import 'package:tutorial_provider/app/app.dart';

import '../data/di/locator.dart';


void main() async {
  await configureDependencies();
  runApp(const App());
}

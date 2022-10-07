import 'package:flutter/material.dart';
import 'package:tutorial_provider/View/categories/categories_widget.dart';

import '../../base_state/base_state.dart';
import 'main_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends BaseState<HomeModel, MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    model.updateCount(_counter);
  }

  @override
  buildViewByState(BuildContext context, HomeModel model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const CategoriesWidget(),
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          model.count.toString(),
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: super.build(context),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
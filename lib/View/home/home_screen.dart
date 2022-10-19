import 'package:flutter/material.dart';
import 'package:tutorial_provider/View/categories/categories_widget.dart';

import '../products/product_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            CategoriesWidget(),
            SizedBox(
              height: 20,
            ),
            ProductWidget(),
          ],
        ),
      ),

    );
  }
}

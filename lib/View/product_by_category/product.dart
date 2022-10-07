import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  ProductArgs? args;

  ProductScreen({Key? key, this.args}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ProductArgs {
  final int categoryId;

  ProductArgs({required this.categoryId});
}

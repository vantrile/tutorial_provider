import 'package:flutter/material.dart';
import 'package:tutorial_provider/View/products/product_model.dart';
import 'package:tutorial_provider/base_state/base_state.dart';


import '../../data/domain/entities/product_entity.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends BaseState<ProductModel, ProductWidget> {
  @override
  buildViewByState(BuildContext context, ProductModel model) {
    final listProducts = model.listProducts;
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        ProductEntity item = listProducts[index];
        return Column(
          children: [
            SizedBox(
                width: 200,
                height: 100,
                child: Image.network(item.imageProduct!)),
            Text("${item.name} "),
          ],
        );
      },
      itemCount: listProducts.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }
}

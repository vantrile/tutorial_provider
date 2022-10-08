import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tutorial_provider/View/categories/categories_model.dart';
import 'package:tutorial_provider/base_state/base_state.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState
    extends BaseState<CategoriesModel, CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  buildViewByState(BuildContext context, CategoriesModel model) {
    // TODO: implement buildViewByState
    return Container(
      height: 200,
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final item = model.listCategories[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(item.icon),
                ),
                Text(item.name),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: model.listCategories.length,
      ),
    );
  }
}

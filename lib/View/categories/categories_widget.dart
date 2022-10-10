import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tutorial_provider/View/categories/categories_model.dart';
import 'package:tutorial_provider/base_state/base_state.dart';
import 'package:tutorial_provider/domain/entities/category_entity.dart';

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
      height: 300,
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        primary: false,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 167 / 96,
        ),
        itemBuilder: (context, index) {
          CategoryEntity item = model.listCategories[index];
          return Container(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(9.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.network(item.icon),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(item.name),
              ],
            ),
          );
        },
        itemCount: model.listCategories.length,
      ),
    );
  }
}

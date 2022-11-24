import 'package:flutter/material.dart';
import 'package:tutorial_provider/data/enums.dart';

class BottomBarItem extends StatelessWidget {
  final int selectedIndex;
  final int index;
  ValueChanged<int> onPress;

  BottomBarItem(
      {required this.selectedIndex,
      required this.index,
      required this.onPress,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(MasterTap.values[index].name),
      onTap: () => onPress(index),
    );
  }
}

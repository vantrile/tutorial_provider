import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tutorial_provider/View/chat/chat_screen.dart';
import 'package:tutorial_provider/View/discover/discover_screen.dart';
import 'package:tutorial_provider/View/home/home_screen.dart';
import 'package:tutorial_provider/View/master/master_model.dart';
import 'package:tutorial_provider/View/master/widget_items.dart';
import 'package:tutorial_provider/View/profile/profile_screen.dart';
import 'package:tutorial_provider/base_state/base_state.dart';
import 'package:tutorial_provider/data/enums.dart';

class MasterScreen extends StatefulWidget {
  const MasterScreen({Key? key}) : super(key: key);

  @override
  State<MasterScreen> createState() => _MasterScreenState();
}

class _MasterScreenState extends BaseState<MasterModel, MasterScreen> {
  static List<Widget> pages = <Widget>[
    const MyHomePage(),
    const DiscoverScreen(),
    const ChatScreen(),
    const ProfileScreen()
  ];

  onTabChange(int index) {
    print("index seleted : $index");
    model.changeTap(MasterTap.values[index], false);
  }

  @override
  buildViewByState(BuildContext context, MasterModel model) {
    // TODO: implement buildViewByState
    return Scaffold(
      body: IndexedStack(
        index: model.selectedTap.index,
        children: pages,
      ),
      bottomNavigationBar: buildBottomNavigationBar(context, model),
    );
  }

  buildBottomNavigationBar(BuildContext context, MasterModel model) {
    return Container(
      height: 72 +
          MediaQuery.of(context).viewPadding.bottom +
          (Platform.isAndroid ? 5 : 0),
      decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.vertical(top: Radius.circular(12.0))),
      child: Row(
        children: [
          Expanded(
            child: BottomBarItem(
              selectedIndex: model.selectedTap.index,
              index: MasterTap.home.index,
              onPress: onTabChange,
            ),
          ),
          Expanded(
            child: BottomBarItem(
              selectedIndex: model.selectedTap.index,
              index: MasterTap.discover.index,
              onPress: onTabChange,
            ),
          ),
          Expanded(
            child: BottomBarItem(
              selectedIndex: model.selectedTap.index,
              index: MasterTap.chat.index,
              onPress: onTabChange,
            ),
          ),
          Expanded(
            child: BottomBarItem(
              selectedIndex: model.selectedTap.index,
              index: MasterTap.profile.index,
              onPress: onTabChange,
            ),
          ),
        ],
      ),
    );
  }

}

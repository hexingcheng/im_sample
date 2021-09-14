import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TabItemType { home, reservation, myPage }

class TabBarChageNotifier with ChangeNotifier {
  final _controller = CupertinoTabController();
  CupertinoTabController get controller => _controller;

  final _tabBadgeFlag = Map.fromIterables(
      TabItemType.values, TabItemType.values.map((_) => false));
  Map<TabItemType, bool> get tabBadges => _tabBadgeFlag;

  void setTab(TabItemType tab) {
    _controller.index = tab.index;
    notifyListeners();
  }

  void addBadge(TabItemType tab) {
    _tabBadgeFlag[tab] = true;
    notifyListeners();
  }

  void removeBadge(TabItemType tab) {
    _tabBadgeFlag[tab] = false;
    notifyListeners();
  }
}

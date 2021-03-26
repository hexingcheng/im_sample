import 'package:flutter/material.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class NavigatorService {
  static final GlobalKey<NavigatorState> navigatorKey = _rootNavigatorKey;

  T provider<T>(T? nav) {
    if (nav == null) throw Error();
    return nav;
  }
}

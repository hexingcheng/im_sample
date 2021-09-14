import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../im_serivce.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:package_info_plus/package_info_plus.dart';

class RootVM extends ChangeNotifier with WidgetsBindingObserver {
  Future init() async {
    final service = IMService("aaa", 1094);
    await service.init();
    await service.joinGroup(1094);
    service.addListener((_) {});
    // service.addListener((message) {
    //   Logger().e(message);
    // });
    // await service.joinGroup(1011);
    notifyListeners();
    return;
  }
}

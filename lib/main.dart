import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/config.dart';
import 'package:onlylive/di.dart';
import 'package:onlylive/entry.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:onlylive/services/fcm_service.dart';
// import 'package:onlylive/test.dart';
import 'flavor.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const hasEnv = bool.hasEnvironment("FLAVOR");
  if (!hasEnv) {
    debugPrint("not fonud flavor");
    exit(0);
  }
  const flavor = String.fromEnvironment("FLAVOR");
  await initConfig(Flavor(flavor));

  di();
  await Firebase.initializeApp();
  FCMService().init();

  runApp(MyApp());
}

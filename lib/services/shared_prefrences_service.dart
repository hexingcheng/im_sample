import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesService {
  SharedPrefrencesService() {
    Future(() async => {_instance = await SharedPreferences.getInstance()});
  }
  static late SharedPreferences _instance;

  static Future<void> setApiToken(String apiToken) async {
    _instance.setString("apiToken", apiToken);
  }

  static Future<void> setUUID(String uuid) async {
    await _instance.setString("uuid", uuid);
  }
}

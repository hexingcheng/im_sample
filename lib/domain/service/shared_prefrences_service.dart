import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesService {
  SharedPrefrencesService();
  Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static late SharedPreferences _instance;

  static Future<void> setApiToken(String apiToken) async {
    _instance.setString("apiToken", apiToken);
  }

  static Future<void> setUUID(String uuid) async {
    await _instance.setString("uuid", uuid);
  }

  static Future<void> setLanguageCode(String code) async {
    _instance.setString("languageCode", code);
  }

  static String? getLanguageCode() {
    return _instance.getString("languageCode");
  }

  static String? getUUID() {
    return _instance.getString("uuid");
  }

  static String? getApiToken() {
    return _instance.getString("apiToken");
  }
}

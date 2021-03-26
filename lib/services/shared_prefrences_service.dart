import 'dart:async';

import 'package:onlylive/services/call_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesService {
  Future<SharedPrefrencesService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  late SharedPreferences _prefs;
}

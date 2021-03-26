import 'package:flutter/material.dart';
import 'package:onlylive/snippets/validator.dart';

class SMSAuthVM with ChangeNotifier {
  // state
  String _authCode = "";
  bool isResendingSMSCode = false;

  set authCode(String val) {
    _authCode = val;
  }

  final validator = Validator();

  Future resendSMSCode() async {
    isResendingSMSCode = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 3));
    isResendingSMSCode = false;
    notifyListeners();
  }
}

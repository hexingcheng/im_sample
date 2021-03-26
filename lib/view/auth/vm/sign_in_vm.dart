import 'package:flutter/material.dart';
import 'package:onlylive/snippets/validator.dart';
import 'package:permission_handler/permission_handler.dart';

class SignInVM with ChangeNotifier {
  // state
  String phoneNumber = "";
  String password = "";
  bool isCommnicatedAPI = false;
  bool validPasswordFormat = true;
  bool isTappedReissuePassText = false;

  final validator = Validator();

  String? validatePhoneNumber(String? val) {
    var error = validator.require(val, "電話番号");
    if (error != null) return error;
    error = validator.isNumber(val);
    if (error != null) return error;
    return validator.range(val, max: 11);
  }

  Future<void> permissionRequest() async {
    if (!await Permission.phone.isGranted) {
      Permission.phone.request();
    }
    if (!await Permission.contacts.isGranted) {
      Permission.contacts.request();
    }
  }

  String? validatePassword(String? val) {
    validPasswordFormat = validator.password(val);
    notifyListeners();
  }

  void toReissuePasswordPage() {}

  void chageReIssuePassTextColor(bool value) {
    isTappedReissuePassText = value;
    notifyListeners();
  }

  bool validate(GlobalKey<FormState> key) {
    return key.currentState!.validate();
  }

  Future login() async {
    isCommnicatedAPI = true;
    notifyListeners();
    // ここにAPI処理
    isCommnicatedAPI = false;
    notifyListeners();
  }
}

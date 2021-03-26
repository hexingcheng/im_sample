import 'package:flutter/material.dart';
import 'package:onlylive/snippets/validator.dart';

class SignUpVM with ChangeNotifier {
  // state
  String _phoneNumber = "";
  String _password = "";
  String _passwordConfirmation = "";
  bool isCommnicatedAPI = false;
  bool validPasswordConfirmation = true;
  bool validPasswordFormat = true;

  final validator = Validator();

  set phoneNumber(String val) {
    _phoneNumber = val;
  }

  set password(String val) {
    _password = val;
  }

  set passwordConfirmation(String val) {
    _passwordConfirmation = val;
  }

  String? validatePhoneNumber(String? val) {
    var error = validator.require(val, "電話番号");
    if (error != null) return error;
    error = validator.isNumber(val);
    if (error != null) return error;
    return validator.range(val, max: 11);
  }

  String? validatePassword(String? val) {
    validPasswordFormat = validator.password(val);
    notifyListeners();
  }

  String? validatePasswordConfirmation(String? val) {
    final error = validator.require(val, "");
    validPasswordConfirmation =
        error == null && validator.match(val, _password);
    notifyListeners();
  }

  bool validate(GlobalKey<FormState> key) {
    return key.currentState!.validate();
  }

  Future onSubmit() async {
    isCommnicatedAPI = true;
    notifyListeners();
    // ここにAPI処理
    isCommnicatedAPI = false;
    notifyListeners();
  }
}

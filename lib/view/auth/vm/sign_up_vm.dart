import 'package:flutter/material.dart';
import 'package:onlylive/domain/service/firebase_auth_service.dart';
import 'package:onlylive/snippets/phone_number.dart';
import 'package:onlylive/snippets/validator.dart';

class SignUpVM with ChangeNotifier {
  // private
  String _phoneNumber = "";
  String _password = "";
  String _passwordConfirmation = "";
  bool _isValidPasswordConfirmation = false;
  bool _isValidPassword = false;
  bool _isValidPhoneNumber = false;

  // getter
  bool get isValidPassword => _isValidPassword;
  bool get isValidPasswordConfirmation => _isValidPasswordConfirmation;
  bool get isValidPhoneNumber => _isValidPhoneNumber;
  String get phoneNumber => _phoneNumber;
  String get password => _password;
  bool get isEnableButton =>
      _isValidPhoneNumber && _isValidPassword && _isValidPasswordConfirmation;

  final validator = Validator();

  void onChagePhoneNumber(String val) {
    _phoneNumber = val;
    _isValidPhoneNumber = Validator.phoneNumber(val);
    notifyListeners();
  }

  void onChagePassword(String val) {
    _password = val;
    _isValidPassword = Validator.password(val);
    _isValidPasswordConfirmation =
        Validator.passwordConfirmation(_passwordConfirmation, _password);
    notifyListeners();
  }

  void onChagePasswordConfirmation(String val) {
    _passwordConfirmation = val;
    _isValidPasswordConfirmation =
        Validator.passwordConfirmation(_passwordConfirmation, _password);
    notifyListeners();
  }
}

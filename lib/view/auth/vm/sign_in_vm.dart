import 'package:flutter/material.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/auth/sign_in_use_case.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/snippets/validator.dart';

enum SignInResult {
  success, // 成功
  invalidPassword, // パスワードが無効
  unRegistered, // 未登録
  deleted, // 退会済み
  unknown // その他
}

class SignInVM with ChangeNotifier {
  // private
  String _phoneNumber = "";
  String _password = "";
  bool _isValidPhoneNumber = true;
  bool _isValidPassword = true;
  bool _isLoading = false;

  // getter
  bool get isValidPhoneNumber => _isValidPhoneNumber;
  bool get isValidPassword => _isValidPassword;
  bool get isEnableButton => isValidPassword && isValidPhoneNumber;
  bool get isLoading => _isLoading;

  Map<SignInResult, String> get errorMessage => {
        SignInResult.invalidPassword: "パスワードが間違っています",
        SignInResult.unRegistered: "入力された電話番号は登録されていません",
        SignInResult.deleted: "onlylive事務局にお問い合わせください",
        SignInResult.unknown: "通信環境をお確かのため、時間をおいて再度お試しください"
      };

  void onChagePassword(String val) {
    _password = val;
    _isValidPassword = Validator.password(val);
    notifyListeners();
  }

  void onChangedPhoneNumber(String val) {
    _phoneNumber = val;
    _isValidPhoneNumber = Validator.phoneNumber(val);
    notifyListeners();
  }

  Future<SignInResult> signIn() async {
    _isLoading = true;
    notifyListeners();
    try {
      await SignInUseCase(Repositories.authRepository)
          .execute(phoneNumber: _phoneNumber, password: _password);
    } on UNAUTHENTICATED {
      return SignInResult.invalidPassword;
    } on NotFound {
      return SignInResult.unRegistered;
    } on DELETEDFAN {
      return SignInResult.deleted;
    } catch (e) {
      return SignInResult.unknown;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
    return SignInResult.success;
  }
}

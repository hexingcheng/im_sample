import 'package:flutter/material.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/service/firebase_auth_service.dart';
import 'package:onlylive/domain/use_case/auth/sign_up_use_case.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/snippets/phone_number.dart';

class SMSAuthVM with ChangeNotifier {
  SMSAuthVM({required String phoneNumber, required String password}) {
    _phoneNumber = phoneNumber;
    _password = password;
    Future(() async {
      await sendSMS();
      _isLoading = false;
      notifyListeners();
    });
  }
  // private
  late String _verificationId;
  late String _password;
  late String _phoneNumber;

  bool _isLoading = true;
  String _smsCode = "";
  bool isResendingSMSCode = false;

  //getter
  bool get isLoading => _isLoading;

  Future resendSMSCode() async {
    isResendingSMSCode = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 3));
    isResendingSMSCode = false;
    notifyListeners();
  }

  Future<void> sendSMS() async {
    void codeSent(String verificationId) {
      _verificationId = verificationId;
    }

    await FirebaseAuthService.verifyPhoneNumber(
        convertPhoneNumber(_phoneNumber),
        codeSent: (verificationId, _) => codeSent(verificationId),
        completed: onChangeSmsCode);
  }

  Future<SignUpResult> onChangeSmsCode(String smsCode) async {
    _smsCode = smsCode;
    if (_smsCode.length == 6) {
      _isLoading = true;
      notifyListeners();
      try {
        final token =
            await FirebaseAuthService.smsAuth(_verificationId, _smsCode);
        signUp(token);
        return SignUpResult.success;
      } on ExistPhoneNumber catch (e) {
        return SignUpResult.existPhoneNumber;
      }
    }
    return SignUpResult.unknown;
  }

  Future<void> signUp(String token) async {
    try {
      await SignUpUseCase(Repositories.authRepository).execute(
          phoneNumber: _phoneNumber, password: _password, firebaseToken: token);
    } catch (e) {
      rethrow;
    }
  }
}

enum SignUpResult {
  unknown,
  success,
  existPhoneNumber,
}

import 'package:firebase_auth/firebase_auth.dart';

class InvalidSMSCode implements Exception {}

class FirebaseAuthService {
  static final _auth = FirebaseAuth.instance;

  static Future<void> verifyPhoneNumber(String phoneNumber,
      {required void Function(String verificationId, int? resendToken) codeSent,
      required void Function(String smsCode) completed,
      int? forceResendingToken}) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (phoneAuthCredential) {
          final smsCode = phoneAuthCredential.smsCode;
          if (smsCode != null) {
            completed(smsCode);
          }
        },
        verificationFailed: (verificationFailed) {},
        codeSent: codeSent,
        forceResendingToken: forceResendingToken,
        codeAutoRetrievalTimeout: (_) {});
  }

  static Future<String> smsAuth(String verificationId, String smsCode) async {
    try {
      final credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: smsCode);
      final userCredential = await _auth.signInWithCredential(credential);
      final token = await userCredential.user!.getIdToken();
      return token;
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == "InvalidSMSCode") {
        throw InvalidSMSCode();
      }
      rethrow;
    }
  }
}

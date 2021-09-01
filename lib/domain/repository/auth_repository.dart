import 'package:onlylive/domain/entities/auth.dart';

abstract class AuthRepository {
  // signIn is fan sign in
  Future<Auth> signIn({
    required String phoneNumber,
    required String password,
    String? fcmToken,
  });

  // signUp is fan sign in
  Future<Auth> signUp({
    required String phoneNumber,
    required String password,
    required String firebaseToken,
    String? fcmToken,
    String? apsToken,
  });

  // refreshToken is refresh token
  Future<String> refreshToken(String oldToken);
}

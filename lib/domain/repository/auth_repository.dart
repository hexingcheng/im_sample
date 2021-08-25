import 'package:onlylive/domain/entities/app_config.dart';
import 'package:onlylive/domain/entities/auth.dart';

abstract class AuthRepository {
  // signIn is fan sign in
  Future<Auth> signIn({
    required String phoneNumber,
    required String password,
    String? fcmToken,
  });
}

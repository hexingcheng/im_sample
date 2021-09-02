import 'package:onlylive/domain/entities/auth.dart';
import 'package:onlylive/domain/repository/auth_repository.dart';
import 'package:onlylive/infra/api/repository.dart';
import 'package:openapi/api.dart';

class APIAuthRepository extends Repository implements AuthRepository {
  APIAuthRepository(this._basePath);
  final String _basePath;

  void authService() {
    AuthServiceApi(ApiClient(basePath: _basePath));
  }

  @override
  Future<Auth> signIn({
    required String phoneNumber,
    required String password,
    String? fcmToken,
  }) async {
    try {
      final service =
          AuthServiceApi(ApiClient(basePath: _basePath)..addXPlatForm());

      final res = await service.authServiceFanSignIn(GrpcFanSignInRequest(
        phoneNumber: phoneNumber,
        password: password,
        fcmToken: fcmToken,
      ));
      return Auth(apiToken: res.apiToken, uuid: res.uuid);
    } on ApiException catch (e) {
      throw Repository.apiException(e);
    }
  }

  @override
  Future<Auth> signUp({
    required String phoneNumber,
    required String password,
    required String firebaseToken,
    String? fcmToken,
    String? apsToken,
  }) async {
    try {
      final service = AuthServiceApi(ApiClient(basePath: _basePath)
        ..addAuthorization("bearer $firebaseToken"));

      final res = await service.authServiceFanSignUp(GrpcFanSignUpRequest(
        phoneNumber: phoneNumber,
        password: password,
        fcmToken: fcmToken,
        apsToken: apsToken,
      ));
      return Auth(apiToken: res.apiToken, uuid: res.uuid);
    } on ApiException catch (e) {
      throw Repository.apiException(e);
    }
  }

  @override
  Future<String> refreshToken(String oldToken) async {
    try {
      final service = AuthServiceApi(ApiClient(basePath: _basePath));
      final res = await service.authServiceFanRefreshToken(
          GrpcFanRefreshTokenRequest(oldToken: oldToken));
      return res.newToken;
    } on ApiException catch (e) {
      throw Repository.apiException(e);
    }
  }
}

import 'package:onlylive/domain/entities/auth.dart';
import 'package:onlylive/domain/repository/auth_repository.dart';
import 'package:onlylive/infra/api/repository.dart';
import 'package:openapi/api.dart';

class APIAuthRepository extends Repository implements AuthRepository {
  APIAuthRepository(this._client);
  final AuthServiceApi _client;

  @override
  Future<Auth> signIn({
    required String phoneNumber,
    required String password,
    String? fcmToken,
  }) async {
    try {
      _client.apiClient.addDefaultHeader(
        xPlatformHeader,
        getXPlatformValue,
      );
      final res = await _client.authServiceFanSignIn(GrpcFanSignInRequest(
        phoneNumber: phoneNumber,
        password: password,
        fcmToken: fcmToken,
      ));
      return Auth(apiToken: res.apiToken, uuid: res.uuid);
    } on ApiException catch (e) {
      throw apiException(e);
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
      _client.apiClient
          .addDefaultHeader(authorizationHeader, "bearer $firebaseToken");
      final res = await _client.authServiceFanSignUp(GrpcFanSignUpRequest(
        phoneNumber: phoneNumber,
        password: password,
        fcmToken: fcmToken,
        apsToken: apsToken,
      ));
      return Auth(apiToken: res.apiToken, uuid: res.uuid);
    } on ApiException catch (e) {
      throw apiException(e);
    }
  }

  @override
  Future<String> refreshToken(String oldToken) async {
    try {
      final res = await _client.authServiceFanRefreshToken(
          GrpcFanRefreshTokenRequest(oldToken: oldToken));
      return res.newToken;
    } on ApiException catch (e) {
      throw apiException(e);
    }
  }
}

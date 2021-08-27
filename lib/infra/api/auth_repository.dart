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
}

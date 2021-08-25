import 'package:onlylive/domain/entities/auth.dart';
import 'package:onlylive/domain/repository/auth_repository.dart';
import 'package:onlylive/infra/api/client.dart';
import 'package:onlylive/infra/api/repository.dart';

class APIAuthRepository extends Repository implements AuthRepository {
  APIAuthRepository(this._client);
  final APIClient _client;

  @override
  Future<Auth> signIn({
    required String phoneNumber,
    required String password,
    String? fcmToken,
  }) async {
    try {
      final res = await _client.post("v1/fans/signin", body: {
        "phone_number": phoneNumber,
        "password": password,
        "fcm_token": fcmToken,
      }, headers: {
        xPlatformHeader: getXPlatformValue,
      }) as Map<String, dynamic>;
      print(fcmToken);

      final apiToken = res["api_token"] as String;
      final fanUuid = res["uuid"] as String;
      return Auth(apiToken: apiToken, uuid: fanUuid);
    } catch (e) {
      rethrow;
    }
  }
}

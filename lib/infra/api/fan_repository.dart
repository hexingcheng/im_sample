import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/infra/api/client.dart';
import 'package:onlylive/infra/dto/call_transaction_dto.dart';
import 'package:onlylive/infra/dto/fan_dto.dart';

class APIFanRepository implements FanRepository {
  APIFanRepository(this._client);
  final APIClient _client;

  @override
  Future<Fan> getFan(String fanUUID) async {
    final res =
        await _client.get("v1/fans/$fanUUID", fromJson: FanDTO.fromJSON);
    return res;
  }

  @override
  Future<CallTransaction> getCallTransaction(String fanUUID) async {
    final res = await _client.get("v1/fans/$fanUUID/call_transaction",
        fromJson: CallTransactionDTO.fromJSON);
    return res;
  }

  @override
  Future<void> updateCallTransaction(
      String fanUUID, CallTransaction callTransaction) async {
    try {
      await _client.put(
        "v1/fans/$fanUUID/call_transaction",
        body: {
          "call_uuid": callTransaction.callUUID,
          "caller_name": callTransaction.talentDisplayName,
          "caller_uuid": callTransaction.talentUUID
        },
      );
    } catch (e) {
      rethrow;
    }
  }
}

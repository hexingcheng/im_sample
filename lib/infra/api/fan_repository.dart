import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/infra/mapper/call_transaction_mapper.dart';
import 'package:onlylive/infra/mapper/fan_mapper.dart';
import 'package:openapi/api.dart';

class APIFanRepository implements FanRepository {
  APIFanRepository(this._client);
  final FanServiceApi _client;

  @override
  Future<Fan> getFan(String fanUUID) async {
    final response = await _client.fanServiceGetFan(fanUUID);
    return FanMapper.decode(response.fan);
  }

  @override
  Future<CallTransaction> getCallTransaction(String fanUUID) async {
    final response = await _client.fanServiceGetCallTransaction(fanUUID);
    return CallTransactionMapper.decode(response.callTransaction);
  }

  @override
  Future<void> updateCallTransaction(
      String fanUUID, CallTransaction callTransaction) async {
    try {
      await _client.fanServiceUpdateCallTransaction(
          fanUUID,
          GrpcUpdateCallTransactionRequest(
              callUuid: callTransaction.callUUID,
              influencerDisplayName: callTransaction.talentDisplayName,
              influencerUuid: callTransaction.talentUUID,
              reservationId: "callTransaction.reservationID",
              fanMeetingId: "callTransaction.fanMeetingID"));
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/entities/time_stamp.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/infra/api/repository.dart';
import 'package:onlylive/infra/mapper/call_transaction_mapper.dart';
import 'package:onlylive/infra/mapper/fan_mapper.dart';
import 'package:onlylive/infra/mapper/option_mapper.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';
import 'package:openapi/api.dart';

class APIFanRepository extends Repository implements FanRepository {
  APIFanRepository(this._client);
  final FanServiceApi _client;

  @override
  Future<Fan> getFan(String fanUUID) async {
    try {
      final response = await _client.fanServiceGetFan(fanUUID);
      return FanMapper.decode(response.fan);
    } on ApiException catch (e) {
      throw apiException(e);
    }
  }

  @override
  Future<void> updateAnnotationIdAndBirth(
      {required String accessToken,
      required String uuid,
      required String annotationId,
      required DateTime birth,
      required int option}) async {
    try {
      _client.apiClient.addDefaultHeader(apiTokenHeader, accessToken);
      await _client.fanServiceUpdateFan(GrpcUpdateFanRequest(
          fan: GrpcFan(
              uuid: uuid,
              annotationId: annotationId,
              birth: TimeStampMapper.encode(birth)),
          option: OptionMapper.encode(option)));
    } on ApiException catch (e) {
      throw apiException(e);
    }
  }

  @override
  Future<void> updateDisplayName(
      {required String accessToken,
      required String uuid,
      required String displayName,
      required int option}) async {
    try {
      _client.apiClient.addDefaultHeader(apiTokenHeader, accessToken);
      await _client.fanServiceUpdateDisplayNameFan(
        GrpcUpdateDisplayNameFanRequest(
          uuid: uuid,
          displayName: displayName,
          option: OptionMapper.encode(option),
        ),
      );
    } on ApiException catch (e) {
      throw apiException(e);
    }
  }

  // @override
  // Future<void> update(
  //     String accessToken, String uuid, String displayName, int option) async {
  //   try {
  //     _client.apiClient.addDefaultHeader(apiTokenHeader, accessToken);
  //     await _client.fanServiceUpdateId (
  //       GrpcUpdateDisplayNameFanRequest(
  //         uuid: uuid,
  //         displayName: displayName,
  //         option: OptionMapper.encode(option),
  //       ),
  //     );
  //   } on ApiException catch (e) {
  //     throw apiException(e);
  //   }
  // }

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

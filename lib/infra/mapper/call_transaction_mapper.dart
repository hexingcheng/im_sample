import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';
import 'package:openapi/api.dart';

class CallTransactionMapper {
  static CallTransaction decode(GrpcCallTransaction grpc) {
    return CallTransaction(
      callUUID: grpc.callUuid,
      talentDisplayName: grpc.influencerDisplayName,
      talentUUID: grpc.influencerUuid,
      reservationID: 0,
      fanMeetingID: 0,
      updatedAt: TimeStampMapper.decode(grpc.updatedAt),
    );
  }

  static GrpcCallTransaction encode(CallTransaction callTransaction) {
    return GrpcCallTransaction(
      callUuid: callTransaction.callUUID,
      influencerDisplayName: callTransaction.talentDisplayName,
      influencerUuid: callTransaction.talentUUID,
      reservationId: 0,
      fanMeetingId: 0,
      updatedAt:
          TimeStampMapper.encode(callTransaction.updatedAt ?? DateTime(0)),
    );
  }
}

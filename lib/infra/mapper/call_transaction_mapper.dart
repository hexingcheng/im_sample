import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';

class CallTransactionMapper {
  static CallTransaction fromJSON(Map<String, dynamic> json) {
    final callTransaction = json["call_transaction"] as Map<String, dynamic>? ??
        {
          "call_uuid": "",
          "influencer_uuid": "",
          "influencer_display_name": "",
          "fan_meeting_id": 0,
          "reservation_id": 0,
          "balance": 0,
          "item_code": "",
          "fan_uuid": "",
          "updated_at": {"seconds": 0000000000},
        };

    return CallTransaction(
        callUUID: callTransaction["call_uuid"] as String,
        talentDisplayName: callTransaction["influencer_display_name"] as String,
        talentUUID: callTransaction["influencer_uuid"] as String,
        fanUUID: callTransaction["fan_uuid"] as String,
        itemCode: callTransaction["item_code"] as String,
        balance: callTransaction["balance"] as int,
        reservationID: callTransaction["reservation_id"] as int,
        fanMeetingID: callTransaction["fan_meeting_id"] as int,
        updatedAt: TimeStampMapper.fromJSON(
                callTransaction["updated_at"] as Map<String, dynamic>)
            .toDateTime);
  }
}

import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';
import 'package:onlylive/infra/mapper/reservation_state_mapper.dart';

class ReservationMapper {
  static Reservation fromJSON(Map<String, dynamic> json) {
    return Reservation(
      id: json["id"] as int? ?? 0,
      fanUUID: json["fan_uuid"] as String? ?? "",
      state: ReservationStateMapper.decode(json["state"] as int? ?? 0),
      fanmeetingID: json["fanmeeting_id"] as int? ?? 0,
      influecnerUUID: json["influencer_uuid"] as String? ?? "",
      startTime: TimeStampMapper.fromJSON(
        json["start_time"] as Map<String, dynamic>? ?? {"seconds": 0},
      ).toDateTime,
      finishTime: TimeStampMapper.fromJSON(
        json["finish_time"] as Map<String, dynamic>? ?? {"seconds": 0},
      ).toDateTime,
      createdAt: TimeStampMapper.fromJSON(
        json["created_at"] as Map<String, dynamic>? ?? {"seconds": 0},
      ).toDateTime,
      updatedAt: TimeStampMapper.fromJSON(
        json["updated_at"] as Map<String, dynamic>? ?? {"seconds": 0},
      ).toDateTime,
    );
  }
}

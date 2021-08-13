import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_state_mapper.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_style_mapper.dart';
import 'package:onlylive/infra/mapper/fan_meeting/is_extension_mapper.dart';
import 'package:onlylive/infra/mapper/talent_mapper.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';

class FanMeetingMapper {
  static FanMeeting fromJSON(Map<String, dynamic> json) {
    final fanMeeting = json["fan_meeting"] as Map<String, dynamic>;

    return FanMeeting(
      id: fanMeeting["id"] as int? ?? 0,
      itemCode: fanMeeting["item_code"] as String? ?? "",
      talent: TalentMapper.fromJSON(
          fanMeeting["influencer"] as Map<String, dynamic>),
      limitedPeople: fanMeeting["limited_people"] as int? ?? 0,
      state: FanMeetingStateMapper.decode(fanMeeting["state"] as int? ?? 0),
      isExtension:
          IsExtensionMapper.decode(fanMeeting["is_extension"] as int? ?? 0),
      eventDate: TimeStampMapper.fromJSON(
        fanMeeting["event_date"] as Map<String, dynamic>? ?? {"seconds": 0},
      ).toDateTime,
      startTime: TimeStampMapper.fromJSON(
        fanMeeting["start_time"] as Map<String, dynamic>? ?? {"seconds": 0},
      ).toDateTime,
      finishTime: TimeStampMapper.fromJSON(
        fanMeeting["finish_time"] as Map<String, dynamic>? ?? {"seconds": 0},
      ).toDateTime,
      secondsPerReservation: fanMeeting["seconds_per_reservation"] as int? ?? 0,
      style: FanMeetingStyleMapper.decode(fanMeeting["style"] as int? ?? 0),
      createdAt: TimeStampMapper.fromJSON(
        fanMeeting["created_at"] as Map<String, dynamic>? ?? {"seconds": 0},
      ).toDateTime,
      updatedAt: TimeStampMapper.fromJSON(
        fanMeeting["updated_at"] as Map<String, dynamic>? ?? {"seconds": 0},
      ).toDateTime,
    );
  }
}

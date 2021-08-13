import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';

class FanMeetingMapper {
  static FanMeeting fromJSON(Map<String, dynamic> json) {
    final fanMeeting = json["fan_meeting"] as Map<String, dynamic>;

    return FanMeeting(
      id: fanMeeting["id"] as int,
      talentUUID: fanMeeting["influencer_uuid"] as String,
      itemCode: fanMeeting["item_code"] as String,
      limitedPeople: fanMeeting["limited_people"] as int,
      state: fanMeeting["state"] as FanMeetingState,
      isExtension: fanMeeting["is_extension"] as IsExtension,
      eventDate: TimeStampMapper.fromJSON(
              fanMeeting["event_date"] as Map<String, dynamic>)
          .toDateTime,
      startTime: TimeStampMapper.fromJSON(
              fanMeeting["start_time"] as Map<String, dynamic>)
          .toDateTime,
      finishTime: TimeStampMapper.fromJSON(
              fanMeeting["finish_time"] as Map<String, dynamic>)
          .toDateTime,
      secondsPerReservation: fanMeeting["seconds_per_reservation"] as int,
      style: fanMeeting["style"] as FanMeetingStyle,
      createdAt: TimeStampMapper.fromJSON(
              fanMeeting["created_at"] as Map<String, dynamic>)
          .toDateTime,
      updatedAt: TimeStampMapper.fromJSON(
              fanMeeting["updated_at"] as Map<String, dynamic>)
          .toDateTime,
    );
  }
}

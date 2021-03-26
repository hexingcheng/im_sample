import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/infra/dto/time_stamp_dto.dart';

class FanMeetingDTO {
  static FanMeeting fromJSON(Map<String, dynamic> json) {
    final fanMeeting = json["FanMeeting"] as Map<String, dynamic>;

    return FanMeeting(
      id: fanMeeting["id"] as int,
      talentUUID: fanMeeting["influencer_uuid"] as String,
      itemCode: fanMeeting["item_code"] as String,
      limitedPeople: fanMeeting["limited_people"] as int,
      state: fanMeeting["state"] as FanMeetingState,
      isExtension: fanMeeting["is_extension"] as IsExtension,
      eventDate: TimeStampDTO.fromJSON(
              fanMeeting["event_date"] as Map<String, dynamic>)
          .toDateTime,
      startTime: TimeStampDTO.fromJSON(
              fanMeeting["start_time"] as Map<String, dynamic>)
          .toDateTime,
      finishTime: TimeStampDTO.fromJSON(
              fanMeeting["finish_time"] as Map<String, dynamic>)
          .toDateTime,
      secondsPerReservation: fanMeeting["seconds_per_reservation"] as int,
      style: fanMeeting["style"] as FanMeetingStyle,
      createdAt: TimeStampDTO.fromJSON(
              fanMeeting["created_at"] as Map<String, dynamic>)
          .toDateTime,
      updatedAt: TimeStampDTO.fromJSON(
              fanMeeting["updated_at"] as Map<String, dynamic>)
          .toDateTime,
    );
  }
}

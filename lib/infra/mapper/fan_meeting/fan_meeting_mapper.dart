import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_state_mapper.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_style_mapper.dart';
import 'package:onlylive/infra/mapper/fan_meeting/is_extension_mapper.dart';
import 'package:onlylive/infra/mapper/talent_mapper.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';
import 'package:openapi/api.dart';

class FanMeetingMapper {
  static FanMeeting decode(GrpcFanMeeting grpc) {
    return FanMeeting(
      id: grpc.id,
      itemCode: grpc.itemCode,
      talent: TalentMapper.decode(grpc.influencer),
      limitedPeople: grpc.limitedPeople,
      state: FanMeetingStateMapper.decode(
          grpc.state ?? GrpcFanMeetingState.number0),
      isExtension:
          IsExtensionMapper.decode(grpc.isExtension ?? GrpcIsExtension.number0),
      eventDate: TimeStampMapper.decode(
          grpc.eventDate ?? GrpcTimestamp(seconds: 0, nanos: 0)),
      secondsPerReservation: grpc.secondsPerReservation,
      thumbnailMovieUri: grpc.thumbnailMovieUri,
      flvUri: grpc.flvUri,
      style: FanMeetingStyleMapper.decode(
          grpc.style ?? GrpcFanmeetingStyle.number1),
    );
  }
}

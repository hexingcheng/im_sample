import 'package:onlylive/domain/entities/fanmeeting_of_influencer.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_state_mapper.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_style_mapper.dart';
import 'package:onlylive/infra/mapper/fan_meeting/is_extension_mapper.dart';
import 'package:onlylive/infra/mapper/talent_mapper.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';
import 'package:openapi/api.dart';

class NowFanMeetingMapper {
  static FanMeetingOfInfluencer decode(GrpcFanMeeting grpc) {
    return FanMeetingOfInfluencer(
      id: grpc.id,
      itemCode: grpc.itemCode,
      limitedPeople: grpc.limitedPeople,
      eventDate: TimeStampMapper.decode(
          grpc.eventDate ?? GrpcTimestamp(seconds: 0, nanos: 0)),
    );
  }
}

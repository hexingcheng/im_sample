import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_mapper.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_state_mapper.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_style_mapper.dart';
import 'package:onlylive/infra/mapper/fan_meeting/is_extension_mapper.dart';
import 'package:onlylive/infra/mapper/talent_mapper.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';
import 'package:openapi/api.dart';

class FanMeetingAndReservedMapper {
  static FanMeetingAndReserved decode(GrpcFanMeetingAndReserved grpc) {
    return FanMeetingAndReserved(
      fanMeeting: FanMeetingMapper.decode(grpc.fanMeeting),
      waitSeconds: grpc.waitSeconds,
      isSoldout: grpc.isSoldout,
    );
  }
}

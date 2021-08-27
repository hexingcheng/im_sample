import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:openapi/api.dart';

class FanMeetingStyleMapper {
  static const fanMeetingStyleMap = {
    FanMeetingStyle.unknown: GrpcFanmeetingStyle.unknown,
    FanMeetingStyle.regular: GrpcFanmeetingStyle.regular,
    FanMeetingStyle.serial: GrpcFanmeetingStyle.serial,
  };

  static FanMeetingStyle decode(GrpcFanmeetingStyle grpc) {
    return fanMeetingStyleMap.entries
        .firstWhere((element) => element.value == grpc)
        .key;
  }

  static GrpcFanmeetingStyle encode(FanMeetingStyle style) {
    return fanMeetingStyleMap.entries
        .firstWhere((element) => element.key == style)
        .value;
  }
}

import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:openapi/api.dart';

class FanMeetingStyleMapper {
  static const fanMeetingStyleMap = {
    FanMeetingStyle.unknown: GrpcFanmeetingStyle.number0,
    FanMeetingStyle.regular: GrpcFanmeetingStyle.number1,
    FanMeetingStyle.serial: GrpcFanmeetingStyle.number2,
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

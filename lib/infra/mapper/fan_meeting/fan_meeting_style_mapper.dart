import 'package:onlylive/domain/entities/fan_meeting.dart';

class FanMeetingStyleMapper {
  static Map<FanMeetingStyle, int> fanMeetingStyleMap = {
    FanMeetingStyle.unknown: 0,
    FanMeetingStyle.regular: 1,
    FanMeetingStyle.serial: 2,
  };

  static FanMeetingStyle decode(int isExtension) {
    return fanMeetingStyleMap.keys.firstWhere(
        (k) => fanMeetingStyleMap[k] == isExtension,
        orElse: () => FanMeetingStyle.unknown);
  }
}

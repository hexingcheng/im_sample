import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/talent.dart';

class FanMeetingStateMapper {
  static Map<FanMeetingState, int> fanMeetingStateMap = {
    FanMeetingState.unknown: 0,
    FanMeetingState.finish: 1,
    FanMeetingState.now: 3,
    FanMeetingState.future: 4,
    FanMeetingState.cancel: 5,
    FanMeetingState.notHeld: 6,
  };

  static FanMeetingState decode(int state) {
    return fanMeetingStateMap.keys.firstWhere(
        (k) => fanMeetingStateMap[k] == state,
        orElse: () => FanMeetingState.unknown);
  }
}

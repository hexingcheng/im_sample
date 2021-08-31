import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:openapi/api.dart';

class FanMeetingStateMapper {
  static const fanMeetingStateMap = {
    FanMeetingState.unknown: GrpcFanMeetingState.number0,
    FanMeetingState.finish: GrpcFanMeetingState.number1,
    FanMeetingState.now: GrpcFanMeetingState.number2,
    FanMeetingState.future: GrpcFanMeetingState.number3,
    FanMeetingState.cancel: GrpcFanMeetingState.number4,
    FanMeetingState.notHeld: GrpcFanMeetingState.number5,
  };

  static FanMeetingState decode(GrpcFanMeetingState grpc) {
    return fanMeetingStateMap.entries
        .firstWhere((element) => element.value == grpc)
        .key;
  }

  static GrpcFanMeetingState encode(FanMeetingState state) {
    return fanMeetingStateMap.entries
        .firstWhere((element) => element.key == state)
        .value;
  }
}

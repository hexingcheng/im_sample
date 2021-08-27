import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:openapi/api.dart';

class FanMeetingStateMapper {
  static const fanMeetingStateMap = {
    FanMeetingState.unknown: GrpcFanMeetingState.stateUnknown,
    FanMeetingState.cancel: GrpcFanMeetingState.cancel,
    FanMeetingState.finish: GrpcFanMeetingState.finish,
    FanMeetingState.now: GrpcFanMeetingState.now,
    FanMeetingState.notHeld: GrpcFanMeetingState.notHeld,
    FanMeetingState.future: GrpcFanMeetingState.future,
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

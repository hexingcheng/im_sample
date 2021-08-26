import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:openapi/api.dart';
import 'package:recase/recase.dart';

class FanMeetingStateMapper {
  static final states = FanMeetingState.values.toList();

  static FanMeetingState decode(GrpcFanMeetingState grpc) {
    return states.firstWhere((state) =>
        ReCase(state.toString().split('.')[1]).snakeCase == grpc.value);
  }
}

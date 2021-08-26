import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:openapi/api.dart';
import 'package:recase/recase.dart';

class FanMeetingStyleMapper {
  static final styles = FanMeetingStyle.values.toList();

  static FanMeetingStyle decode(GrpcFanmeetingStyle grpc) {
    return styles.firstWhere((style) =>
        ReCase(style.toString().split('.')[1]).snakeCase == grpc.value);
  }
}

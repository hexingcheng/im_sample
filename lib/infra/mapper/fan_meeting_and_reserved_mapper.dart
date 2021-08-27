import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_mapper.dart';
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

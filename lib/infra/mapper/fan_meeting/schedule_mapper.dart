import 'package:onlylive/domain/entities/schedule.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';
import 'package:openapi/api.dart';

class ScheduleMapper {
  static Schedule decode(GrpcFanMeeting grpc) {
    return Schedule(
      id: grpc.id,
      itemCode: grpc.itemCode,
      limitedPeople: grpc.limitedPeople,
      eventDate: TimeStampMapper.decode(
          grpc.eventDate ?? GrpcTimestamp(seconds: 0, nanos: 0)),
    );
  }
}

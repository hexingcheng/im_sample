import 'package:onlylive/domain/entities/time_stamp.dart';
import 'package:openapi/api.dart';

class TimeStampMapper {
  static DateTime decode(GrpcTimestamp grpc) {
    return DateTime(grpc.seconds);
  }

  static GrpcTimestamp encode(DateTime dateTime) {
    return GrpcTimestamp(seconds: dateTime.millisecondsSinceEpoch);
  }
}

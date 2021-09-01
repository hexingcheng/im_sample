import 'package:onlylive/domain/entities/time_stamp.dart';
import 'package:openapi/api.dart';

class TimeStampMapper {
  static DateTime decode(GrpcTimestamp grpc) {
    return DateTime.fromMillisecondsSinceEpoch(grpc.seconds * 1000);
  }

  static GrpcTimestamp encode(DateTime dateTime) {
    return GrpcTimestamp(seconds: dateTime.millisecondsSinceEpoch ~/ 1000);
  }
}

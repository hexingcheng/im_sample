import 'package:onlylive/domain/entities/time_stamp.dart';

class TimeStampMapper {
  static TimeStamp fromJSON(Map<String, dynamic> json) {
    return TimeStamp(json["seconds"] as int);
  }
}

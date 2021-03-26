import 'package:onlylive/domain/entities/time_stamp.dart';

class TimeStampDTO {
  static TimeStamp fromJSON(Map<String, dynamic> json) {
    print(json["seconds"] as int);
    return TimeStamp(json["seconds"] as int);
  }
}

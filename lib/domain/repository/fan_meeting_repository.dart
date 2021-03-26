import 'package:onlylive/domain/entities/fan_meeting.dart';

abstract class FanMeetingRepository {
  // GetFanMeeting is FanMeeting gettter
  Future<FanMeeting> getFanMeeting(int id);
}

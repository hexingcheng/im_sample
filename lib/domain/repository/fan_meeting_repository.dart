import 'package:onlylive/domain/entities/fan_meeting.dart';

abstract class FanMeetingRepository {
  // GetFanMeeting is FanMeeting gettter
  Future<FanMeeting> getFanMeeting(int id);
  Future<List<FanMeeting>> listFanMeetingByState(
      FanMeetingState state, String pageToken);
}

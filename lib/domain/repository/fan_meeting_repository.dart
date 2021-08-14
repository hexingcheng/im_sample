import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/topic.dart';

abstract class FanMeetingRepository {
  // getFanMeeting is FanMeeting gettter
  Future<FanMeeting> getFanMeeting(int id);

  // listFanMeetingByState is getting list fanmeeting conditional on state
  Future<List<FanMeeting>> listFanMeetingByState(
      FanMeetingState state, bool paging);

  // listFanMeetingByTopic is getting list fanmeeting conditional on topic
  Future<List<FanMeeting>> listFanMeetingByTopic(Topic topic, bool paging);
}

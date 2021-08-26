import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
import 'package:onlylive/domain/entities/now_fanmeeting.dart';
import 'package:onlylive/domain/entities/topic.dart';

abstract class FanMeetingRepository {
  // getFanMeeting is FanMeeting gettter
  Future<FanMeeting> getFanMeeting(int id);

  // listFanMeetingByState is getting list fanmeeting conditional on state
  Future<Map<String, List<FanMeetingAndReserved>>> listFanMeetingByState(
      FanMeetingState state, String pageToken);

  // listFanMeetingByTopic is getting list fanmeeting conditional on topic
  Future<Map<String, List<FanMeetingAndReserved>>> listFanMeetingByTopic(
      Topic topic, String pageToken);

  Future<List<NowFanMeeting>> getNowFanmeetingByTalentID(
      FanMeetingState state, String talentID);
}

import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fanmeeting_of_influencer.dart';
import 'package:onlylive/domain/entities/schedule.dart';
import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
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

  Future<List<FanMeetingOfInfluencer>> getFanmeetingByTalentID(
      FanMeetingState state, String talentID);

  Future<List<Schedule>> getSchedules(FanMeetingState state, String talentID);
}

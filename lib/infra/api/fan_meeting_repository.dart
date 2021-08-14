import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/topic.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/infra/api/client.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_dto.dart';

class APIFanmeetingRepository implements FanMeetingRepository {
  APIFanmeetingRepository(this._client);
  final APIClient _client;

  static final Map<FanMeetingState, String> _statePageToken = Map.fromIterables(
      FanMeetingState.values, FanMeetingState.values.map((e) => ""));

  static final Map<Topic, String> _topicPageToken =
      Map.fromIterables(Topic.values, Topic.values.map((e) => ""));

  @override
  Future<FanMeeting> getFanMeeting(int id) async {
    final res = _client.get("v1/fan-meetings/id/$id",
        fromJson: FanMeetingMapper.fromJSON);
    return res;
  }

  @override
  Future<List<FanMeeting>> listFanMeetingByState(
      FanMeetingState state, bool paging) async {
    final res = await _client.get(
      "v1/fan-meetings?state=${state.string()}&page_token=${paging ? _statePageToken[state] : ''}",
    ) as Map<String, dynamic>;

    final fanMeetingAndReservedList =
        res["fan_meeting_and_reserved"] as List<dynamic>? ?? [];

    final fanMeetings = <FanMeeting>[];

    if (paging) {
      _statePageToken[state] = res["next_page_token"] as String? ?? "";
    }

    for (final fanMeeting in fanMeetingAndReservedList) {
      fanMeetings
          .add(FanMeetingMapper.fromJSON(fanMeeting as Map<String, dynamic>));
    }
    return fanMeetings;
  }

  @override
  Future<List<FanMeeting>> listFanMeetingByTopic(
      Topic topic, bool paging) async {
    final res = await _client.get(
      "v1/fan-meetings/topic/${topic.string()}?page_token=${paging ? _topicPageToken[topic] : ''}",
    ) as Map<String, dynamic>;

    final fanMeetingAndReservedList =
        res["fan_meeting_and_reserved"] as List<dynamic>? ?? [];

    final fanMeetings = <FanMeeting>[];

    if (paging) {
      _topicPageToken[topic] = res["next_page_token"] as String? ?? "";
    }

    for (final fanMeeting in fanMeetingAndReservedList) {
      fanMeetings
          .add(FanMeetingMapper.fromJSON(fanMeeting as Map<String, dynamic>));
    }
    return fanMeetings;
  }
}

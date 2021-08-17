import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/topic.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/infra/api/client.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_dto.dart';

class APIFanmeetingRepository implements FanMeetingRepository {
  APIFanmeetingRepository(this._client);
  final APIClient _client;

  @override
  Future<FanMeeting> getFanMeeting(int id) async {
    final res = _client.get("v1/fan-meetings/id/$id",
        fromJson: FanMeetingMapper.fromJSON);
    return res;
  }

  @override
  Future<Map<String, List<FanMeeting>>> listFanMeetingByState(
      FanMeetingState state, String pageToken) async {
    final res = await _client.get(
      "v1/fan-meetings?state=${state.string()}&page_token=$pageToken",
    ) as Map<String, dynamic>;

    final fanMeetingAndReservedList =
        res["fan_meeting_and_reserved"] as List<dynamic>? ?? [];

    final _fanMeetings = <FanMeeting>[];

    final _nextPageToken = res["next_page_token"] as String? ?? "";

    for (final fanMeeting in fanMeetingAndReservedList) {
      _fanMeetings
          .add(FanMeetingMapper.fromJSON(fanMeeting as Map<String, dynamic>));
    }
    return {_nextPageToken: _fanMeetings};
  }

  @override
  Future<Map<String, List<FanMeeting>>> listFanMeetingByTopic(
      Topic topic, String pageToken) async {
    final res = await _client.get(
      "v1/fan-meetings/topic/${topic.string()}?page_token=$pageToken",
    ) as Map<String, dynamic>;

    final fanMeetingAndReservedList =
        res["fan_meeting_and_reserved"] as List<dynamic>? ?? [];

    final _fanMeetings = <FanMeeting>[];

    final _nextPageToken = res["next_page_token"] as String? ?? "";

    for (final fanMeeting in fanMeetingAndReservedList) {
      _fanMeetings
          .add(FanMeetingMapper.fromJSON(fanMeeting as Map<String, dynamic>));
    }
    return {_nextPageToken: _fanMeetings};
  }
}

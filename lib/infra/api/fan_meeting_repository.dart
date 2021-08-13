import 'package:onlylive/domain/entities/fan_meeting.dart';
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
  Future<List<FanMeeting>> listFanMeetingByState(
      FanMeetingState state, String pageToken) async {
    final res = await _client.get(
      "v1/fan-meetings?state=${state.string()}",
    ) as Map<String, dynamic>;

    final fanMeetingAndReservedList =
        res["fan_meeting_and_reserved"] as List<dynamic>? ?? [];

    final fanMeetings = <FanMeeting>[];

    for (final fanMeeting in fanMeetingAndReservedList) {
      fanMeetings
          .add(FanMeetingMapper.fromJSON(fanMeeting as Map<String, dynamic>));
    }
    return fanMeetings;
  }
}

import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
import 'package:onlylive/domain/entities/now_fanmeeting.dart';
import 'package:onlylive/domain/entities/fanmeeting_of_influencer.dart';
import 'package:onlylive/domain/entities/topic.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_mapper.dart';
import 'package:onlylive/infra/mapper/fan_meeting_and_reserved_mapper.dart';
import 'package:openapi/api.dart';

class APIFanmeetingRepository implements FanMeetingRepository {
  APIFanmeetingRepository(this._basePath);
  final String _basePath;

  @override
  Future<FanMeeting> getFanMeeting(int id) async {
    final service = FanMeetingServiceApi(ApiClient(basePath: _basePath));
    final response = await service.fanMeetingServiceGetFanMeeting(id);

    return FanMeetingMapper.decode(response.fanMeeting);
  }

  @override
  Future<Map<String, List<FanMeetingAndReserved>>> listFanMeetingByState(
      FanMeetingState state, String pageToken) async {
    final service = FanMeetingServiceApi(ApiClient(basePath: _basePath));

    final response = await service.fanMeetingServiceListFanMeetings(
        state: state.string(), pageToken: pageToken);

    final _nextPageToken = response.nextPageToken;

    final _fanMeetings = response.fanMeetingAndReserved
        .map(FanMeetingAndReservedMapper.decode)
        .toList();

    return {_nextPageToken: _fanMeetings};
  }

  @override
  Future<Map<String, List<FanMeetingAndReserved>>> listFanMeetingByTopic(
      Topic topic, String pageToken) async {
    final service = FanMeetingServiceApi(ApiClient(basePath: _basePath));

    final response =
        await service.fanMeetingServiceListFanMeetingsByTopic(topic.string());

    final _nextPageToken = response.nextPageToken;

    final _fanMeetings = response.fanMeetingAndReserved
        .map(FanMeetingAndReservedMapper.decode)
        .toList();

    return {_nextPageToken: _fanMeetings};
  }

  @override
  Future<List<FanMeetingOfInfluencer>> getFanmeetingByTalentID(
      FanMeetingState state, String talentID) async {
    final res = await _client.get(
            "v1/fan-meetings/influencers/$talentID?state=${state.string()}")
        as Map<String, dynamic>;
    final fanmeetings = res["fan_meeting"] as List<dynamic>? ?? [];

    final _fanMeetings = <FanMeetingOfInfluencer>[];

    for (final fanmeeting in fanmeetings) {
      _fanMeetings.add(FanMeetingOfInfluencerMapper.fromJSON(
          fanmeeting as Map<String, dynamic>));
    }
    return _fanMeetings;
  }
}

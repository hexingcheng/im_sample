import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
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
  Future<List<FanMeeting>> getFanmeetingByTalentID(
      FanMeetingState state, String talentID) {
    final service = FanMeetingServiceApi(ApiClient(basePath: _basePath));
    return service
        .fanMeetingServiceListFanMeetingsByInfluencerUUID(talentID,
            state: state.string())
        .then((res) => res.fanMeeting.map(FanMeetingMapper.decode).toList());
  }
}

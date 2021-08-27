import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
import 'package:onlylive/domain/entities/topic.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/infra/mapper/fan_meeting/fan_meeting_mapper.dart';
import 'package:onlylive/infra/mapper/fan_meeting_and_reserved_mapper.dart';
import 'package:openapi/api.dart';

class APIFanmeetingRepository implements FanMeetingRepository {
  APIFanmeetingRepository(this._service);
  final FanMeetingServiceApi _service;

  @override
  Future<FanMeeting> getFanMeeting(int id) async {
    final response = await _service.fanMeetingServiceGetFanMeeting(id);

    return FanMeetingMapper.decode(response.fanMeeting);
  }

  @override
  Future<Map<String, List<FanMeetingAndReserved>>> listFanMeetingByState(
      FanMeetingState state, String pageToken) async {
    final response = await _service.fanMeetingServiceListFanMeetings(
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
    final response =
        await _service.fanMeetingServiceListFanMeetingsByTopic(topic.string());

    final _nextPageToken = response.nextPageToken;

    final _fanMeetings = response.fanMeetingAndReserved
        .map(FanMeetingAndReservedMapper.decode)
        .toList();

    return {_nextPageToken: _fanMeetings};
  }
}

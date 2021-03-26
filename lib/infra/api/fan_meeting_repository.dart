import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/infra/api/client.dart';
import 'package:onlylive/infra/dto/fan_meeting_dto.dart';

class APIFanmeetingRepository implements FanMeetingRepository {
  APIFanmeetingRepository(this._client);
  final APIClient _client;

  @override
  Future<FanMeeting> getFanMeeting(int id) async {
    final res =
        _client.get("v1/fan-meetings/id/$id", fromJson: FanMeetingDTO.fromJSON);
    return res;
  }
}

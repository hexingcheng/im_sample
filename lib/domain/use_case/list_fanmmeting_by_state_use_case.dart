import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/topic.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';

class ListFanMeetingUseCase {
  ListFanMeetingUseCase(this._fammeetingRepo);
  final FanMeetingRepository _fammeetingRepo;

  Future<Map<String, List<FanMeeting>>> state(FanMeetingState state,
      {String? pageToken}) async {
    return _fammeetingRepo.listFanMeetingByState(state, pageToken ?? "");
  }

  Future<Map<String, List<FanMeeting>>> topic(Topic topic,
      {String? pageToken}) async {
    return _fammeetingRepo.listFanMeetingByTopic(topic, pageToken ?? "");
  }
}

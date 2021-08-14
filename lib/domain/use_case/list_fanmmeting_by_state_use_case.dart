import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/topic.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';

class ListFanMeetingUseCase {
  ListFanMeetingUseCase(this._fammeetingRepo);
  final FanMeetingRepository _fammeetingRepo;

  Future<List<FanMeeting>> state(FanMeetingState state, bool paging) async {
    return _fammeetingRepo.listFanMeetingByState(state, paging);
  }

  Future<List<FanMeeting>> topic(Topic topic, bool paging) async {
    return _fammeetingRepo.listFanMeetingByTopic(topic, paging);
  }
}

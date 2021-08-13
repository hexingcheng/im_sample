import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';

class ListFanMeetingByStateUseCase {
  ListFanMeetingByStateUseCase(this._fammeetingRepo);
  final FanMeetingRepository _fammeetingRepo;

  Future<List<FanMeeting>> execute(FanMeetingState state) async {
    return _fammeetingRepo.listFanMeetingByState(state, "");
  }
}

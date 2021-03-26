import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';

class FanMeetingUseCase {
  FanMeetingUseCase(this._fammeetingRepo);
  final FanMeetingRepository _fammeetingRepo;

  Future<FanMeeting> get(int fanMeetingID) async {
    return _fammeetingRepo.getFanMeeting(fanMeetingID);
  }
}

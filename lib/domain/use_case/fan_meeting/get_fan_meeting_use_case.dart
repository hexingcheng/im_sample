import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetFanMeetingUseCase extends UseCase {
  GetFanMeetingUseCase(this._fammeetingRepo);
  final FanMeetingRepository _fammeetingRepo;

  Future<FanMeeting> execute(int fanMeetingID) async {
    return _fammeetingRepo.getFanMeeting(fanMeetingID);
  }
}

import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';

class GetFanMeetingUseCase {
  GetFanMeetingUseCase(this._fanMeetingRepo);
  final FanMeetingRepository _fanMeetingRepo;

  Future<FanMeeting> execute(int fanMeetingID) async {
    return _fanMeetingRepo.getFanMeeting(fanMeetingID);
  }
}

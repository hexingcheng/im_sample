import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class ListFutureFanMeetingByTalentIDUseCase extends UseCase {
  ListFutureFanMeetingByTalentIDUseCase(this._fammeetingRepo);

  final FanMeetingRepository _fammeetingRepo;

  Future<List<FanMeeting>> execute(String talentID) async {
    return _fammeetingRepo.getFanmeetingByTalentID(
        FanMeetingState.future, talentID);
  }
}

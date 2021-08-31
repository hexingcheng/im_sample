import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fanmeeting_of_influencer.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class NowFanMeetingByStateAndTalentIDUseCase extends UseCase {
  NowFanMeetingByStateAndTalentIDUseCase(this._fammeetingRepo);
  final FanMeetingRepository _fammeetingRepo;

  Future<List<FanMeetingOfInfluencer>> execute(
      String talentID, FanMeetingState state) async {
    return _fammeetingRepo.getFanmeetingByTalentID(state, talentID);
  }
}

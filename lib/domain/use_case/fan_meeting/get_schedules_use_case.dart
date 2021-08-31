import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/schedule.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetSchedulesUseCase extends UseCase {
  GetSchedulesUseCase(this._fammeetingRepo);
  final FanMeetingRepository _fammeetingRepo;

  Future<List<Schedule>> execute(String talentID, FanMeetingState state) async {
    return _fammeetingRepo.getSchedules(state, talentID);
  }
}

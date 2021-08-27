import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
import 'package:onlylive/domain/repository/fan_meeting_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class ListFanMeetingByStateUseCase extends UseCase {
  ListFanMeetingByStateUseCase(this._fammeetingRepo);
  final FanMeetingRepository _fammeetingRepo;

  Future<Map<String, List<FanMeetingAndReserved>>> execute(
      FanMeetingState state,
      {String? pageToken}) async {
    return _fammeetingRepo.listFanMeetingByState(state, pageToken ?? "");
  }
}

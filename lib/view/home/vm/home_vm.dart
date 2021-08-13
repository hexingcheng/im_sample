import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/list_fanmmeting_by_state_use_case.dart';

class HomeVM with ChangeNotifier {
  HomeVM() {
    Future(() async {
      await initState();
    });
  }
  Map<FanMeetingState, List<FanMeeting>> fanMeetings = {};

  final List<Talent> hot = [];
  Future<void> initState() async {
    Future<void> initNowTalent() async {
      fanMeetings[FanMeetingState.now] =
          await ListFanMeetingByStateUseCase(Repositories.fanMeetingRepository)
              .execute(FanMeetingState.now);
    }

    Future<void> initFutureTalent() async {
      fanMeetings[FanMeetingState.future] =
          await ListFanMeetingByStateUseCase(Repositories.fanMeetingRepository)
              .execute(FanMeetingState.future);
    }

    await Future.wait([
      initNowTalent(),
      initFutureTalent(),
    ]);
    notifyListeners();
  }
}

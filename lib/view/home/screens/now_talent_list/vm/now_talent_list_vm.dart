import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/fan_meeting/list_fan_meeting_by_state_use_case.dart';

class NowTalentListVM with ChangeNotifier {
  NowTalentListVM() {
    Future(() async {
      await initState();
    });
  }

  Future<void> initState() async {
    await listNowFanMeeting();
  }

  // private
  final List<FanMeetingAndReserved> _fanMeetingAndReserved = [];
  String _pageToken = "";
  bool _isNeedUpdate = true;

  // getter
  List<FanMeetingAndReserved> get fanMeetingAndReserved =>
      _fanMeetingAndReserved;

  Future<void> listNowFanMeeting() async {
    if (!_isNeedUpdate) {
      return;
    }

    final res =
        await ListFanMeetingByStateUseCase(Repositories.fanMeetingRepository)
            .execute(FanMeetingState.now, pageToken: _pageToken);

    final newFanMeetings = res.values.first;
    if (newFanMeetings.isEmpty) {
      _isNeedUpdate = false;
    }

    _pageToken = res.keys.first;

    fanMeetingAndReserved.addAll(newFanMeetings);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/list_fanmmeting_by_state_use_case.dart';

class FutureTalentListVM with ChangeNotifier {
  FutureTalentListVM() {
    Future(() async {
      await initState();
    });
  }

  Future<void> initState() async {
    await listFutureFanMeeting();
  }

  // private
  final List<FanMeeting> _fanMeetings = [];
  String _pageToken = "";
  bool _isNeedUpdate = true;

  // getter
  List<FanMeeting> get fanMeetings => _fanMeetings;

  Future<void> listFutureFanMeeting() async {
    if (!_isNeedUpdate) {
      return;
    }

    final res = await ListFanMeetingUseCase(Repositories.fanMeetingRepository)
        .state(FanMeetingState.future, pageToken: _pageToken);
    final newFanMeetings = res.values.first;
    if (newFanMeetings.isEmpty) {
      _isNeedUpdate = false;
    }

    _pageToken = res.keys.first;

    _fanMeetings.addAll(newFanMeetings);
    notifyListeners();
  }
}

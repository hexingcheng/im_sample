import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/topic.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/list_fanmmeting_by_state_use_case.dart';

class TopicTalentListVM with ChangeNotifier {
  TopicTalentListVM() {
    Future(() async {
      await initState();
    });
  }

  Future<void> initState() async {
    await listTopicFanMeeting();
  }

  // private
  final List<FanMeeting> _fanMeetings = [];
  String _pageToken = "";
  bool _isNeedUpdate = true;

  // getter
  List<FanMeeting> get fanMeetings => _fanMeetings;

  Future<void> listTopicFanMeeting() async {
    if (!_isNeedUpdate) {
      return;
    }

    final res = await ListFanMeetingUseCase(Repositories.fanMeetingRepository)
        .topic(Topic.popular, pageToken: _pageToken);

    final newFanMeetings = res.values.first;
    if (newFanMeetings.isEmpty) {
      _isNeedUpdate = false;
    }

    _pageToken = res.keys.first;

    _fanMeetings.addAll(newFanMeetings);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fan_meeting_and_reserved.dart';
import 'package:onlylive/domain/entities/topic.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/fan_meeting/list_fan_meeting_by_state_use_case.dart';
import 'package:onlylive/domain/use_case/fan_meeting/list_fan_meeting_by_topic_use_case.dart';

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
  final List<FanMeetingAndReserved> _fanMeetingAndReserved = [];
  String _pageToken = "";
  bool _isNeedUpdate = true;

  // getter
  List<FanMeetingAndReserved> get fanMeetingAndReserved =>
      _fanMeetingAndReserved;

  Future<void> listTopicFanMeeting() async {
    if (!_isNeedUpdate) {
      return;
    }

    final res =
        await ListFanMeetingByTopicUseCase(Repositories.fanMeetingRepository)
            .execute(Topic.popular, pageToken: _pageToken);

    final newFanMeetings = res.values.first;
    if (newFanMeetings.isEmpty) {
      _isNeedUpdate = false;
    }

    _pageToken = res.keys.first;

    _fanMeetingAndReserved.addAll(newFanMeetings);
    notifyListeners();
  }
}

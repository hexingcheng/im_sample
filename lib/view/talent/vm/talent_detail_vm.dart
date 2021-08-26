import 'package:flutter/material.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/talent_usecase.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/use_case/list_fanmmeting_by_state_use_case.dart';

enum MeetingType {
  now,
  future,
  popular,
}

class TalentDetailVM with ChangeNotifier {
  TalentDetailVM() {
    Future(() async {
      await initState();
    });
  }

  final String talentID = "aa8ba146-d7b4-4c29-9d8c-928def63e49f";
  final String eventDate = "12/18(月)";
  final String startTime = "19:00 -";
  final num secondsPerReservation = 5;
  late String meetingState = "";

  // private
  final Map<MeetingType, List<FanMeeting>> _fanMeetings =
      Map.fromIterables(MeetingType.values, MeetingType.values.map((e) => []));
// getter
  Map<MeetingType, List<FanMeeting>> get fanMeetings => _fanMeetings;

  late Talent talent = Talent(
      uuid: "",
      introduction: "",
      displayName: "",
      annotationID: "",
      mainSquareImageUrl: "",
      mainRectangleImageUrl: "",
      imageUrls: [
        "https://storage.googleapis.com/dev-barry-image/DebugTest/LA0009_01_%E3%81%99%E3%81%99%E3%82%99%E3%81%82%E3%81%8B%E3%81%AD.jpeg",
        "https://storage.googleapis.com/dev-barry-image/DebugTest/LA0009_01_%E3%81%99%E3%81%99%E3%82%99%E3%81%82%E3%81%8B%E3%81%AD.jpeg",
      ],
      twitterUrl: "",
      instagramUrl: "",
      tiktokUrl: "",
      youtubeUrl: "",
      customLinkName: "",
      customLinkUrl: "",
      genre: []);

  // Talent get talent => _talent;

  Future<void> initState() async {
    talent = await TalentUseCase(Repositories.talentRepository).get(talentID);
    periodicUpdateNowFanmeeting();
  }

  Future<void> updatesTalentDetail() async {
    Future<void> initNowFanmeeting() async {
      final fanMeeting =
          await ListFanMeetingUseCase(Repositories.fanMeetingRepository)
              .talentID(FanMeetingState.now, talentID);
      notifyListeners();
      if (fanMeeting.isEmpty) {
        meetingState = "other";
      } else {
        meetingState = "now";
      }
    }

    await Future.wait([
      initNowFanmeeting(),
    ]);
    notifyListeners();
  }

  Future<void> periodicUpdateNowFanmeeting() async {
    await updatesTalentDetail();
    await Future.delayed(const Duration(seconds: 30));
    periodicUpdateNowFanmeeting();
  }
}

import 'package:flutter/material.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/talent_usecase.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fanmeeting_of_influencer.dart';
import 'package:onlylive/domain/use_case/list_fanmmeting_by_state_use_case.dart';
import 'package:onlylive/domain/use_case/reservation_use_case.dart';

enum MeetingType {
  now,
  future,
  popular,
}

enum ReservationType {
  unknown,
  wait,
  done,
}

class TalentDetailVM with ChangeNotifier {
  TalentDetailVM({required this.talentID}) {
    Future(() async {
      await initState();
    });
  }
  late String talentID = "";

  final String fanUUID = "23aa61af-6f52-47f9-b489-f5285c16d228";

  late String meetingState = "";

  // private
  final Map<MeetingType, List<FanMeetingOfInfluencer>> _fanMeetings =
      Map.fromIterables(MeetingType.values, MeetingType.values.map((e) => []));
// getter
  Map<MeetingType, List<FanMeetingOfInfluencer>> get fanMeetings =>
      _fanMeetings;

  late Talent talent = Talent(
      uuid: "",
      introduction: "",
      displayName: "",
      annotationID: "",
      mainSquareImageUrl: "",
      mainRectangleImageUrl: "",
      imageUrls: [],
      twitterUrl: "",
      instagramUrl: "",
      tiktokUrl: "",
      youtubeUrl: "",
      customLinkName: "",
      customLinkUrl: "",
      genre: []);

  late Reservation reservation = Reservation(
      id: 0,
      fanUUID: "",
      state: ReservationState.wait,
      fanmeetingID: 0,
      influecnerUUID: "",
      startTime: DateTime.now(),
      finishTime: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now());

  Future<void> initState() async {
    talent = await TalentUseCase(Repositories.talentRepository).get(talentID);
    print(talent.displayName);
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

    Future<void> initFutureFanmeetings() async {
      final _fanMeetings =
          await ListFanMeetingUseCase(Repositories.fanMeetingRepository)
              .talentID(FanMeetingState.future, talentID);
      fanMeetings[MeetingType.future] = _fanMeetings;
    }

    await Future.wait([
      initNowFanmeeting(),
      initFutureFanmeetings(),
    ]);
    notifyListeners();
  }

  Future<void> periodicUpdateNowFanmeeting() async {
    await updatesTalentDetail();
    // 後で消す
    reservation =
        await ReservationUseCase(Repositories.reservationRepo).get(1, fanUUID);
    print(reservation.state.index);
    await Future.delayed(const Duration(seconds: 30));
    periodicUpdateNowFanmeeting();
  }

  Future<void> createReservation(int fanMeetingID) async {
    await ReservationUseCase(Repositories.reservationRepo).create(fanMeetingID);
    reservation = await ReservationUseCase(Repositories.reservationRepo)
        .get(fanMeetingID, fanUUID);
    return;
  }
}

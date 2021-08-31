import 'package:flutter/material.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/fan_meeting/get_schedules_use_case.dart';
import 'package:onlylive/domain/use_case/talent/get_talent_use_case.dart';
import 'package:onlylive/domain/use_case/follow/create_follow_use_case.dart';
import 'package:onlylive/domain/use_case/follow/delete_follow_use_case.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/entities/schedule.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/fanmeeting_of_influencer.dart';
import 'package:onlylive/domain/use_case/fan_meeting/get_now_fan_meeting_by_state_and_talent_id_use_case.dart';
import 'package:onlylive/domain/use_case/reservation/get_reservation_use_case.dart';
import 'package:onlylive/domain/use_case/reservation/create_reservation_use_case.dart';

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

  late bool? isFollow = false;

  late int fanMeetingID = 0;

  late bool? isReserved = false;

  // private
//   final Map<MeetingType, List<FanMeetingOfInfluencer>> _fanMeetings =
//       Map.fromIterables(MeetingType.values, MeetingType.values.map((e) => []));
//   final List<Schedule> _schedules = [];
// // getter
//   Map<MeetingType, List<FanMeetingOfInfluencer>> get fanMeetings =>
//       _fanMeetings;
  // List<Schedule> get schedules => _schedules;

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

  late List<String> talentImages = [];

  late List<Schedule> schedules = [
    Schedule(id: 0, limitedPeople: 0, eventDate: DateTime.now(), itemCode: "")
  ];

  late List<FanMeetingOfInfluencer> fanMeetings = [
    FanMeetingOfInfluencer(
      id: 0,
      limitedPeople: 0,
      eventDate: DateTime.now(),
      itemCode: '',
    )
  ];

  Future<void> initState() async {
    final response =
        await GetTalentUseCase(Repositories.talentRepository).execute(talentID);
    talent = response.keys.first;
    setTalentImages();
    periodicUpdateFanmeeting();
  }

  //mainSquareImageUrlとimageUrlsをtalentImagesにセットする
  void setTalentImages() {
    talentImages = [
      talent.mainSquareImageUrl,
    ];
    if (talent.imageUrls != null) {
      talentImages.addAll(talent.imageUrls);
    }
  }

  Future<void> updatesTalentDetail() async {
    Future<void> initNowFanmeeting() async {
      fanMeetings = await NowFanMeetingByStateAndTalentIDUseCase(
              Repositories.fanMeetingRepository)
          .execute(talentID, FanMeetingState.now);
      notifyListeners();
      if (fanMeetings.isEmpty) {
        meetingState = "other";
      } else {
        meetingState = "now";
      }
      getReservation();
    }

    Future<void> initSchedules() async {
      schedules = await GetSchedulesUseCase(Repositories.fanMeetingRepository)
          .execute(talentID, FanMeetingState.future);
    }

    await Future.wait([
      initNowFanmeeting(),
      initSchedules(),
    ]);
    notifyListeners();
  }

  Future<void> periodicUpdateFanmeeting() async {
    await updatesTalentDetail();
    await getIsFollowStatus();
    await Future.delayed(const Duration(seconds: 15));
    periodicUpdateFanmeeting();
  }

  Future<void> createReservation(int fanmeetingID) async {
    print("CreateReservatiion-VM");
    await CreateReservationUseCase(Repositories.reservationRepo)
        .execute(fanMeetingID);
  }

  Future<void> getReservation() async {
    fanMeetingID = fanMeetings[0].id;
    isReserved = await GetReservationUseCase(Repositories.reservationRepo)
        .execute(fanMeetingID);
    print("isReserved");
    print(isReserved);
    return;
  }

  Future<void> getIsFollowStatus() async {
    final response =
        await GetTalentUseCase(Repositories.talentRepository).execute(talentID);
    isFollow = response.values.first;
  }

  Future<void> isFollowFunc() async {
    if (isFollow == true) {
      await DeleteFollowUseCase(Repositories.followRepository)
          .execute(talentID: talentID);
      getIsFollowStatus();
    } else {
      await CreateFollowUseCase(Repositories.followRepository)
          .execute(talentID);
      getIsFollowStatus();
    }
  }
}

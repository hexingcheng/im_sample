import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/fan/get_fan_use_case.dart';
import 'package:onlylive/domain/use_case/fan_meeting/list_future_fan_meeting_by_talent_id_use_case.dart.dart';
import 'package:onlylive/domain/use_case/fan_meeting/list_now_fan_meeting_by_talent_id_use_case.dart';
import 'package:onlylive/domain/use_case/follow/follow_use_case.dart';
import 'package:onlylive/domain/use_case/follow/un_follow_use_case.dart';
import 'package:onlylive/domain/use_case/reservation/get_reservation_status_use_case.dart';
import 'package:onlylive/domain/use_case/talent/get_talent_use_case.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/use_case/reservation/create_reservation_use_case.dart';
import 'package:onlylive/domain/use_case/wallet/get_wallet_usecase.dart';
import 'package:url_launcher/url_launcher.dart';

enum SNSType { twitter, instagram, youtube, tiktok }

class TalentDetailVM with ChangeNotifier {
  TalentDetailVM(this._talentID);

  final String _talentID;

  // talent
  String? _tiktokUrl;
  String get tiktokUrl => _tiktokUrl ?? "";

  String? _youtubeUrl;
  String get youtubeUrl => _youtubeUrl ?? "";

  String? _twitterUrl;
  String get twitterUrl => _twitterUrl ?? "";

  String? _instagramUrl;
  String get instagramUrl => _instagramUrl ?? "";

  String? _customLinkName;
  String get customLinkName => _customLinkName ?? "";

  String? _customLinkUrl;
  String get customLinkUrl => _customLinkUrl ?? "";

  String? _displayName;
  String get displayName => _displayName ?? "";

  String? _introduction;
  String get introduction => _introduction ?? "";

  String? _mainRectangleImageUrl;
  String get mainRectangleImageUrl => _mainRectangleImageUrl ?? "";

  String? _mainSquareImageUrl;
  String get mainSquareImageUrl => _mainSquareImageUrl ?? "";

  List<String> _profileImageUrls = [];
  List<String> get profileImageUrls => _profileImageUrls;

  // fan
  bool _isFollowed = false;
  bool get isFollowed => _isFollowed;

  bool _isReserved = false;
  bool get isReserved => _isReserved;

  int? _reservedNum;
  int get reservedNum => _reservedNum ?? 0;

  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  // other
  bool _initilized = false;
  bool get initilized => _initilized;

  // fan meeting
  FanMeetingStyle? _nowFanMeetingStyle;
  FanMeetingStyle get nowFanMeetingStyle =>
      _nowFanMeetingStyle ?? FanMeetingStyle.regular;

  int? _nowFanMeetingwId;
  int get nowFanMeetingwId => _nowFanMeetingwId ?? 0;

  int? _unicCoin;
  int get unitCoin => _unicCoin ?? 0;

  int? _secondsPerReserved;
  int get secondsPerReserved => _secondsPerReserved ?? 0;

  List<Map<DateTime, int>> _schedules = [];
  List<Map<DateTime, int>> get schedules => _schedules;

  bool _hasNowFanMeeting = false;
  bool get hasNowFanMeeting => _hasNowFanMeeting;

  bool _isEnableCustomLink = false;
  bool get isEnableCustomLink => _isEnableCustomLink;

  Map<SNSType, bool> get enableSNSUrlList => _enableSNSUrlList;
  final Map<SNSType, bool> _enableSNSUrlList =
      Map.fromIterables(SNSType.values, SNSType.values.map((_) => false));

  int? _balance;
  int get balance => _balance ?? 0;

  Timer? _timer;

  Future<bool> isEnableUrl(String? url) {
    if (url == null) return Future.value(false);
    return canLaunch(url).then((value) => value);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> getTalent() async {
    final followStatus = await GetTalentUseCase(Repositories.talentRepository)
        .execute(_talentID);
    final talent = followStatus.talent;
    _customLinkName = talent.customLinkName;
    _tiktokUrl = talent.tiktokUrl;
    _customLinkUrl = talent.customLinkUrl;
    _twitterUrl = talent.twitterUrl;
    _instagramUrl = talent.instagramUrl;
    _youtubeUrl = talent.youtubeUrl;
    _introduction = talent.introduction;
    _displayName = talent.displayName;
    _mainRectangleImageUrl = talent.mainRectangleImageUrl;
    _mainSquareImageUrl = talent.mainSquareImageUrl;
    _profileImageUrls = [];
    _profileImageUrls.add(talent.mainRectangleImageUrl);

    if (talent.imageUrls != null && talent.imageUrls!.isNotEmpty) {
      _profileImageUrls.addAll(talent.imageUrls!);
    }
    _isFollowed = followStatus.isFollow;

    await Future.wait([
      isEnableUrl(_twitterUrl)
          .then((value) => _enableSNSUrlList[SNSType.twitter] = value),
      isEnableUrl(_instagramUrl)
          .then((value) => _enableSNSUrlList[SNSType.instagram] = value),
      isEnableUrl(_tiktokUrl).then((value) {
        _enableSNSUrlList[SNSType.tiktok] = value;
      }),
      isEnableUrl(_youtubeUrl)
          .then((value) => _enableSNSUrlList[SNSType.youtube] = value),
      isEnableUrl(_customLinkUrl).then((value) => _isEnableCustomLink = value)
    ]);
  }

  Future<void> getFutureFanMeetings() {
    return ListFutureFanMeetingByTalentIDUseCase(
            Repositories.fanMeetingRepository)
        .execute(_talentID)
        .then((fanMeetings) {
      if (fanMeetings.isNotEmpty) {
        _schedules = [];
        for (final e in fanMeetings) {
          _schedules.add(<DateTime, int>{e.eventDate: e.limitedPeople});
        }
      }
    });
  }

  Future<void> initState() async {
    try {
      await Future.wait([
        getFan(),
        getTalent(),
        getNowFanMeeting(),
        getFutureFanMeetings(),
      ]).catchError((e) {
        debugPrint("failed to init state: $e");
      });

      await getReservationStatus(nowFanMeetingwId)
          .catchError((e) => debugPrint("failed to init state: $e"));
      // periodicUpdateFanmeeting();

    } catch (_) {}
    _initilized = true;
    notifyListeners();
  }

  Future<void> getNowFanMeeting() {
    return ListNowFanMeetingByTalentIDUseCase(Repositories.fanMeetingRepository)
        .execute(_talentID)
        .then((fanMeetings) {
      if (fanMeetings.isEmpty) {
        _hasNowFanMeeting = false;
      } else {
        _hasNowFanMeeting = true;
        final nowFanMeeting = fanMeetings.first;
        _nowFanMeetingwId = nowFanMeeting.id;
        _nowFanMeetingStyle = nowFanMeeting.style;
      }
      notifyListeners();
    });
  }

  Future<void> getReservationStatus(int fanMeetingID) {
    return GetReservationStatusUseCase(Repositories.reservationRepo)
        .execute(fanMeetingID)
        .then((reservationStatus) {
      _isReserved = reservationStatus.isReserved!;
      _reservedNum = reservationStatus.numReservedFan;
    });
  }

  Future<void> periodicUpdateFanmeeting() async {
    Timer.periodic(const Duration(seconds: 15), (timer) {
      getNowFanMeeting();
      periodicUpdateFanmeeting();
    });
  }

  Future<void> createReservation(int fanMeetingID) async {
    await CreateReservationUseCase(Repositories.reservationRepo)
        .execute(fanMeetingID);
  }

  Future<void> getFan() async {
    try {
      await GetFanUseCase(Repositories.fanRepository).execute();
      _isLoggedIn = true;
      await getWallet();
    } catch (e) {
      _isLoggedIn = false;
    }
  }

  Future<void> getWallet() {
    return GetWalletUseCase(Repositories.walletRepository)
        .execute()
        .then((wallet) {
      _balance = wallet.balance;
    });
  }

  Future<void> unFollow() async {
    await UnFollowUseCase(Repositories.followRepository).execute(_talentID);
    _isFollowed = false;
    notifyListeners();
  }

  Future<void> follow() async {
    await FollowUseCase(Repositories.followRepository).execute(_talentID);
    _isFollowed = true;
    notifyListeners();
  }
}

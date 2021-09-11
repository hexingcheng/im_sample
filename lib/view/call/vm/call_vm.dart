import 'dart:async';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/service/const/tencent.dart';
import 'package:onlylive/domain/use_case/fan/get_fan_use_case.dart';
import 'package:onlylive/domain/use_case/reservation/get_reservation_use_case.dart';
import 'package:onlylive/domain/service/im_serivce.dart';
import 'package:onlylive/domain/use_case/fan_meeting/fanmeeting_use_case.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/service/trtc_service.dart';
import 'package:callkeep/callkeep.dart';
import 'package:onlylive/domain/use_case/wallet/consume_use_case.dart';
import 'package:onlylive/domain/use_case/wallet/get_wallet_usecase.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:onlylive/extension/int_extension.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

enum CallStatus {
  connecting,
  duringCall,
  complete,
  saveCheki,
  networkError,
  block
}
enum ToastType {
  unknown,
  poorNetwork,
  peepingPhotos,
  alreadyHasShooting,
  shootingTimeHasPassed
}

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class CallVM with ChangeNotifier {
  CallVM({required this.fanMeetingId, required this.reservationId});

  final int fanMeetingId;
  final int reservationId;

  // fan
  String? _fanUUID;
  String get fanUUID => _fanUUID ?? "";
  String? _annotaionID;
  String get annotaionID => _annotaionID ?? "";

  // talent
  String? _talentDisplayName;
  String get talentDisplayName => _talentDisplayName ?? "";

  String? _talentMainSquareImageUrl;
  String get talentMainSquareImage => _talentMainSquareImageUrl ?? "";

  String? _talentIntroduction;
  String get talentIntroduction => _talentIntroduction ?? "";

  String? _talentUUID;

  // fanMeeting
  int? _secondsPerReservation;
  int get secondsPerReservation => _secondsPerReservation ?? 0;

  ItemCode? _itemCode;
  ItemCode get itemCode => _itemCode ?? "";

  // wallet
  int? _balance;
  int get balance => _balance ?? 0;

  // tencenct
  late TRTCService _trtcService;
  late IMService _imService;

  // call
  bool _hasCheki = false;
  bool get hasCheki => _hasCheki;

  ToastType _toastType = ToastType.unknown;
  ToastType get toastType => _toastType;

  bool _showCautionPopUp = true;
  bool _isFinishedFanMeeting = false;
  bool _hasDuringChekiShooting = false;
  bool _isEnabledCheki = true;
  late Timer _timer;
  int _validExtensionNum = 3;
  int _remainigMinutes = 0;
  int _remainigSeconds = 0;
  bool _isLoading = false;
  bool _initilized = false;
  CallStatus _callStatus = CallStatus.connecting;

  // gettter
  CallStatus get callStatus => _callStatus;
  bool get showCautionPopUp => _showCautionPopUp;
  bool get isFinishedFanMeeting => _isFinishedFanMeeting;
  bool get hasDuringChekiShooting => _hasDuringChekiShooting;
  bool get isEnabledCheki => _isEnabledCheki;
  bool get isEnabledExtnsion => 0 < _validExtensionNum;
  int get validExtensionNum => _validExtensionNum;
  String get remainingTime =>
      "${_remainigMinutes.zeroFill(2)}:${_remainigSeconds.zeroFill(2)}";
  bool get isLoading => _isLoading;
  bool get initilized => _initilized;

  @override
  void dispose() {
    _trtcService.dispose();

    _timer.cancel();
    super.dispose();
  }

  void progress() {
    if (0 < _remainigSeconds) {
      _remainigSeconds--;
    }
    if (_remainigSeconds == 0 && 0 < _remainigMinutes) {
      _remainigSeconds = 59;
      _remainigMinutes--;
    }
  }

  void closeCautionPopUp() {
    _showCautionPopUp = false;
    notifyListeners();
  }

  final FlutterCallkeep _callKeep = FlutterCallkeep();

  Future<void> hasPhoneAccount(BuildContext context) async {
    try {
      _callKeep.setup(<String, dynamic>{
        'ios': {
          'appName': 'CallKeepDemo',
        },
        'android': {
          'alertTitle': 'Permissions required',
          'alertDescription':
              'This application needs to access your phone accounts',
          'cancelButton': 'Cancel',
          'okButton': 'ok',
        },
      });
    } catch (e) {}
    final hasPhoneAccount = await _callKeep.hasPhoneAccount();
    if (!hasPhoneAccount) {
      await _callKeep.hasDefaultPhoneAccount(context, <String, dynamic>{
        'alertTitle': 'Permissions required',
        'alertDescription':
            'This application needs to access your phone accounts',
        'cancelButton': 'Cancel',
        'okButton': 'ok',
      });
    }
  }

  Future<void> _permissionRequest() async {
    final status = await Permission.phone.request();
    if (!await Permission.contacts.isGranted) {
      Permission.contacts.request();
    }
  }

  Future<void> initState() async {
    // await _permissionRequest();
    await Future.wait([
      _getFan(),
      _getWalet(),
      _getFanMeeting(fanMeetingId),
    ]).catchError((e) => throw Exception("failed to init state"));

    await Future.wait([
      _initTrtc(_fanUUID),
      _initIM(_fanUUID, fanMeetingId),
    ]).catchError((e) => throw Exception("failed to init tencent service"));

    _initilized = true;
    notifyListeners();
  }

  Future<String?> _getChekiUrl(int reservationID) {
    return GetReservationUseCase(Repositories.reservationRepo)
        .execute(reservationID)
        .then((value) => value.chekiImageUrl);
  }

  Future<void> _getFanMeeting(int fanMeetingID) {
    return GetFanMeetingUseCase(Repositories.fanMeetingRepository)
        .execute(fanMeetingID)
        .then((fanMeeting) {
      final talent = fanMeeting.talent;
      if (talent == null) throw NullThrownError();

      _secondsPerReservation = fanMeeting.secondsPerReservation;
      _itemCode = fanMeeting.itemCode;
      _talentDisplayName = talent.displayName;
      _talentMainSquareImageUrl = talent.mainSquareImageUrl;
      _talentIntroduction = talent.introduction;
      _talentUUID = talent.uuid;
    });
  }

  Future<void> _getFan() {
    return GetFanUseCase(Repositories.fanRepository)
        .execute()
        .then((value) => _fanUUID = value.uuid);
  }

  Future<void> _getWalet() {
    return GetWalletUseCase(Repositories.walletRepository)
        .execute()
        .then((wallet) => _balance = wallet.balance);
  }

  Future<void> _consume(int numExtension) {
    // 必ず5秒後に消費する
    return Future.delayed(const Duration(seconds: 5)).then((_) =>
        ConsumeUseCase(Repositories.walletRepository)
            .execute(fanMeetingId: fanMeetingId, numExtension: numExtension));
  }

  void _networkListener(NetworkQuality networkQuality) {
    if (networkQuality == NetworkQuality.good) Logger().i("net work がいい");
    if (networkQuality == NetworkQuality.bad) Logger().i("net work がわるい");
  }

  Future<void> _initTrtc(String? fanUUID) async {
    if (fanUUID == null) throw Exception("not fonud fan uuid");
    _trtcService = TRTCService(fanUUID);
    await _trtcService.init();
    _trtcService.addNetworkQualityListener(_networkListener);
    await _trtcService.enterRoom(fanMeetingId);
  }

  Future<void> chekiRequest() async {
    if (_remainigMinutes == 0 && _remainigSeconds <= 5) {
      _toastType = ToastType.shootingTimeHasPassed;
    } else {
      _hasDuringChekiShooting = true;
      _isEnabledCheki = false;
      await _imService.sendMessage(
          key: IMSendKeys.chekiRequest.string, userID: _talentUUID ?? "");
    }
    notifyListeners();
  }

  Future<void> extension(int rate) async {
    _validExtensionNum = rate;
    await _imService.sendMessage(
        key: IMSendKeys.extendRequest.string,
        content: rate.toString(),
        userID: _talentUUID ?? "");
    _consume(_validExtensionNum);
    notifyListeners();
  }

  Future<void> saveCheki() async {
    final checkiUrl = await _getChekiUrl(reservationId);
    if (checkiUrl != null) {
      final response = await Dio()
          .get(checkiUrl, options: Options(responseType: ResponseType.bytes));
      await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data as List<int>),
        quality: 100,
      );

      _callStatus = CallStatus.saveCheki;
    }
  }

  Future<void> _initIM(String? userId, int roomId) async {
    if (userId == null) throw Exception("not fonud fan uuid");
    _imService = IMService(
      userId,
      roomId,
    );
    await _imService.init();
    await _imService.joinGroup(roomId);

    _imService.addListener((msg) {
      Logger().e("ながれてるーーーーーーーー");
      Logger().e(msg.toJson());
      if (msg.key == IMReceiveKeys.didTookCheki.string) {
        tookCheki();
      }
      if (msg.key == IMReceiveKeys.blockFan.string) {}
      if (msg.key == IMReceiveKeys.endFanmeeting.string) {
        completeFanMeeting();
      }
      if (msg.key == IMReceiveKeys.callRemainTime.string) {
        callRemainTime(msg);
      }
    });
  }

  void tookCheki() {
    _hasCheki = true;
    _hasDuringChekiShooting = false;
    notifyListeners();
  }

  void blockFan() {
    _isFinishedFanMeeting = true;
    _callStatus = CallStatus.block;
    notifyListeners();
  }

  Future<void> completeFanMeeting() async {
    _isFinishedFanMeeting = true;
    if (hasCheki) {
      await saveCheki();
      _callStatus = CallStatus.saveCheki;
    } else {
      _callStatus = CallStatus.complete;
    }
    notifyListeners();
  }

  void callRemainTime(IMMessage msg) {
    final seconds = int.parse(msg.content!);
    if (_callStatus == CallStatus.connecting) {
      _callStatus = CallStatus.duringCall;
      _consume(0);
    }
    _remainigMinutes = seconds.convertSecondsToMinutes;
    _remainigSeconds = seconds - (60 * _remainigMinutes);
    notifyListeners();
  }

  Future<void> renderView(int viewId) async {
    if (_talentUUID == null) throw Exception("not fonud talent uuid");
    try {
      await _trtcService.renderView(_talentUUID!, viewId);
    } catch (e) {}
  }
}

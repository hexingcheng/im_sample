import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlylive/config.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/entities/reservation.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/reservation_use_case.dart';
import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/services/tencent.dart';
import 'package:tencent_im_sdk_plugin/enum/V2TimAdvancedMsgListener.dart';
import 'package:tencent_im_sdk_plugin/enum/V2TimSDKListener.dart';
import 'package:tencent_trtc_cloud/trtc_cloud.dart';
import 'package:tencent_trtc_cloud/trtc_cloud_def.dart';
import 'package:tencent_trtc_cloud/trtc_cloud_listener.dart';
import 'package:tencent_trtc_cloud/trtc_cloud_video_view.dart';
import 'package:tencent_im_sdk_plugin/tencent_im_sdk_plugin.dart';
import 'package:tencent_im_sdk_plugin/models/v2_tim_value_callback.dart';
import 'package:tencent_im_sdk_plugin/enum/log_level.dart';
import 'package:tencent_im_sdk_plugin/manager/v2_tim_manager.dart';
import 'package:callkeep/callkeep.dart';
import 'package:permission_handler/permission_handler.dart';

class RemainigTime {
  RemainigTime({
    required this.minutes,
    required this.seconds,
  });
  int minutes;
  int seconds;

  static RemainigTime convertFromSeconds(int seconds) {
    var remainingSeconds = seconds;
    var remainingMinutes = 0;
    if (60 <= seconds) {
      remainingMinutes = seconds ~/ 60;
      remainingSeconds = seconds - (remainingMinutes * 60);
    }

    return RemainigTime(minutes: remainingMinutes, seconds: remainingSeconds);
  }

  // Min:Sec formatter
  String toMinSec() {
    final min = minutes.toString().padLeft(2, "0");
    final sec = seconds.toString().padLeft(2, "0");
    return "$min:$sec";
  }

  void progress() {
    if (0 < seconds) {
      seconds--;
    }
    if (seconds == 0 && 0 < minutes) {
      seconds = 59;
      minutes--;
    }
  }

  bool isZero() {
    return seconds == 0 && minutes == 0;
  }
}

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class CallVM with ChangeNotifier {
  CallVM({required CallTransaction callTransaction}) {
    isLoading = true;
    Future(() async {
      await _permissionRequest();
      // await call();
      await _initState(callTransaction);
      await _initTrtc();
      // await _initIM();
      // await createReservation();
      isLoading = false;
      _startCall();
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _destoryRoom();

    _timer.cancel();
    super.dispose();
  }

  void _destoryRoom() {
    trtcInstanece!.unRegisterListener(onRtcListener);
    trtcInstanece!.exitRoom();
    TRTCCloud.destroySharedInstance();
  }

  late FanMeeting fanMeeting;
  late Talent talent;
  late Reservation reservation;
  late Fan fan;
  bool isLoading = false;
  bool _showCautionPopUp = true;
  bool _isFinishedFanMeeting = false;
  late Timer _timer;

  void closeCautionPopUp() {
    _showCautionPopUp = false;
    notifyListeners();
  }

  bool get showCautionPopUp => _showCautionPopUp;
  bool get isFinishedFanMeeting => _isFinishedFanMeeting;

  RemainigTime remainigTime = RemainigTime(minutes: 0, seconds: 0);

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

  static String userSig = GenerateTestUserSig.genTestSig(userId) as String;

  static int roomId = 487;
  late TRTCCloud? trtcInstanece;
  static String userId = "aaaa";

  String message = "";

  Future<void> _initState(CallTransaction callTransaction) async {
    // fanMeeting = await FanMeetingUseCase(Repositories().fanMeetingRepository)
    //     .get(callTransaction.fanMeetingID);

    // fan = await FanUseCase(Repositories().fanRepository)
    //     .get(callTransaction.fanUUID);
    // fan = await FanUseCase(Repositories().fanRepository)
    //     .get(callTransaction.fanUUID);
    fanMeeting = FanMeeting(
        id: 511,
        talentUUID: "talentUUID",
        itemCode: "itemCode",
        limitedPeople: 10,
        state: FanMeetingState.now,
        isExtension: IsExtension.ok,
        eventDate: DateTime(0),
        startTime: DateTime(0),
        finishTime: DateTime(0),
        secondsPerReservation: 5,
        style: FanMeetingStyle.regular,
        createdAt: DateTime(0),
        updatedAt: DateTime(0));
    fan = Fan(
        uuid: "uuid",
        introduction: "introduction",
        displayName: "displayName",
        annotationID: "annotationID",
        birth: DateTime(0),
        phoneNumber: "phoneNumber",
        imageUrl:
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/509D/production/_112873602_whatsappimage2020-06-12at11.23.53-2.jpg");
    reservation = Reservation(
        id: 9,
        state: ReservationState.wait,
        startTime: DateTime(0),
        fanUUID: "",
        fanmeetingID: 1,
        influecnerUUID: "",
        finishTime: DateTime(0),
        createdAt: DateTime(0),
        updatedAt: DateTime(0));
    talent = Talent(
        uuid: "uuid",
        introduction: "introduction",
        displayName: "displayName",
        annotationID: "annotationID",
        mainSquareImageUrl:
            "https://ichef.bbci.co.uk/news/800/cpsprodpb/509D/production/_112873602_whatsappimage2020-06-12at11.23.53-2.jpg",
        mainRectangleImageUrl: "mainRectangleImageUrl",
        twitterUrl: "twitterUrl",
        instagramUrl: "instagramUrl",
        tiktokUrl: "tiktokUrl",
        youtubeUrl: "youtubeUrl",
        customLinkName: "customLinkName",
        customLinkUrl: "customLinkUrl",
        genre: "genre");
    remainigTime =
        RemainigTime.convertFromSeconds(fanMeeting.secondsPerReservation);
  }

  Future<void> _initTrtc() async {
    trtcInstanece = await TRTCCloud.sharedInstance();
    trtcInstanece!
        .registerListener((type, params) => onRtcListener(type, params));
    enterRoom();
  }

  void onRtcListener(TRTCCloudListener type, dynamic params) {
    if (type == TRTCCloudListener.onError) {
      print("エラーがおきたー" + params['errMsg'].toString());
    }
    if (type == TRTCCloudListener.onStartPublishing) {
      print("startしたーーーー");
    }
    if (type == TRTCCloudListener.onUserVideoAvailable) {
      print("userしゅとくｓちあー");
    }
  }

  V2TIMManager timManager = TencentImSDKPlugin.v2TIMManager;

  V2TimSDKListener initLisener() {
    return V2TimSDKListener(onConnectSuccess: () => {});
  }

  Future<void> createReservation() async {
    await ReservationUseCase(Repositories.reservationRepo)
        .create(fanMeeting.id);
  }

  void _startCall() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      remainigTime.progress();
      if (remainigTime.isZero()) {
        _finishFanMeeting();
        _timer.cancel();
      }
      notifyListeners();
    });
  }

  void _finishFanMeeting() {
    _isFinishedFanMeeting = true;
  }

  Future<void> _initIM() async {
    final litener = initLisener();
    V2TimValueCallback<bool> initRes = await timManager.initSDK(
      sdkAppID: Config.tencent.sdkAppId,
      loglevel: LogLevel.V2TIM_LOG_DEBUG,
      listener: litener,
    );
    timManager.login(userID: userId, userSig: userSig);
    final converstion = timManager.getConversationManager();
    final imMessageManager = timManager.getMessageManager();
    final listener = V2TimAdvancedMsgListener(onRecvNewMessage: (msg) {});
    imMessageManager.addAdvancedMsgListener(listener: listener);
    await timManager.joinGroup(
        groupID: fanMeeting.id.toString(), message: message);
    final session = await converstion.getConversation(
      conversationID: fanMeeting.id.toString(),
    );
  }

// Future onDidReceiveLocalNotification(int id, String? title, String? body, String? payload) async {
//   // display a dialog with the notification details, tap ok to go to another page
//   showDialog(
//     context: context,
//     builder: (BuildContext context) => CupertinoAlertDialog(
//       title: Text("タイトル"),
//       content: Text("body"),
//       actions: [
//         CupertinoDialogAction(
//           isDefaultAction: true,
//           child: Text('Ok'),
//           onPressed: () async {
//             Navigator.of(context, rootNavigator: true).pop();
//             await Navigator.pushNamed(context, "/login");
//           },
//         )
//       ],
//     ),
//   );
// }
//   void localNotificaion() {
//     final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//     var initializationSettingsAndroid = AndroidInitializationSettings('app_icon');
//     var initializationSettingsIOS = IOSInitializationSettings(onDidReceiveLocalNotification: onDidReceiveLocalNotification);
//     var initializationSettings = InitializationSettings(android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
//     flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onSelectNotification: (a) async => {
//           print("aaaaaaaaaaa")
//         });

//     var androidPlatformChannelSpecifics = AndroidNotificationDetails(
//         'your channel id', 'your channel name', 'your channel description',
//         importance: Importance.max, priority: Priority.high);
//     var iOSPlatformChannelSpecifics = IOSNotificationDetails();
//     final platformChannelSpecifics = NotificationDetails(
//         android: androidPlatformChannelSpecifics, iOS: iOSPlatformChannelSpecifics);
//   }

  late TRTCCloudVideoViewController _trtcController;

  void enterRoom() {
    try {
      final userSig = GenerateTestUserSig.genTestSig(userId) as String;
      trtcInstanece!.enterRoom(
        TRTCParams(
          sdkAppId: Config.tencent.sdkAppId,
          userId: userId,
          userSig: userSig,
          strRoomId: roomId.toString(),
          roomId: roomId,
        ),
        TRTCCloudDef.TRTC_APP_SCENE_VIDEOCALL,
      );
    } catch (e) {
      print(e);
    }
  }

  void renderView(int viewId) {
    try {
      trtcInstanece!.startRemoteView("d5a80f0e-86c6-4df4-87b9-fea801d1346e",
          TRTCCloudDef.TRTC_VIDEO_STREAM_TYPE_BIG, viewId);

      // trtcInstanece!.startPublishStream(TRTCCloudDef.TRTC_AUDIO_QUALITY_SPEECH);
      // trtcInstanece!.startLocalAudio(TRTCCloudDef.TRTC_AUDIO_QUALITY_SPEECH);
      // trtcInstanece!.stopLocalAudio();
    } catch (e) {}
  }
}

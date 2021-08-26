import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onlylive/config.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/reservation/get_reservation_use_case.dart';
import 'package:onlylive/services/call_service.dart';
import 'package:onlylive/services/fcm_service.dart';
import 'package:onlylive/services/tencent.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:tencent_im_sdk_plugin/enum/V2TimAdvancedMsgListener.dart';
// import 'package:tencent_im_sdk_plugin/enum/V2TimSDKListener.dart';
// import 'package:tencent_trtc_cloud/trtc_cloud.dart';
// import 'package:tencent_trtc_cloud/trtc_cloud_def.dart';
// import 'package:tencent_trtc_cloud/trtc_cloud_listener.dart';
// import 'package:tencent_trtc_cloud/trtc_cloud_video_view.dart';
// import 'package:tencent_im_sdk_plugin/tencent_im_sdk_plugin.dart';
// import 'package:tencent_im_sdk_plugin/models/v2_tim_value_callback.dart';
// import 'package:tencent_im_sdk_plugin/enum/log_level.dart';
// import 'package:tencent_im_sdk_plugin/manager/v2_tim_manager.dart';
import 'package:callkeep/callkeep.dart';

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
class InComingCallVM with ChangeNotifier {
  InComingCallVM({
    required FlutterCallkeep callKeep,
    required CallInfo callInfo,
  }) {
    _callKeep = callKeep;
    callInfo = callInfo;
    Future(() async {
      // await call();
      // await init();
      // await initIM();
      // await createReservation();
    });
  }
  late FlutterCallkeep _callKeep;
  late CallInfo _callInfo;

  CallInfo get callInfo => _callInfo;

  static String userSig = GenerateTestUserSig.genTestSig(userId) as String;

  Future<void> startCall(BuildContext context) async {
    await _callKeep.startCall(
        _callInfo.callUUID, _callInfo.callerName, _callInfo.callUUID);
  }

  static int roomId = 487;
  // late TRTCCloud? trtcInstanece;
  static String userId = "aaaa";
  late FirebaseApp firebase;
}

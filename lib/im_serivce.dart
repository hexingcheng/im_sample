import 'dart:async';
import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:onlylive/config.dart';
import 'package:onlylive/tencent_sig.dart';
import 'package:tencent_im_sdk_plugin/enum/V2TimAdvancedMsgListener.dart';
import 'package:tencent_im_sdk_plugin/enum/V2TimConversationListener.dart';
import 'package:tencent_im_sdk_plugin/enum/V2TimGroupListener.dart';
import 'package:tencent_im_sdk_plugin/enum/V2TimSDKListener.dart';
import 'package:tencent_im_sdk_plugin/enum/V2TimSignalingListener.dart';
import 'package:tencent_im_sdk_plugin/enum/V2TimSimpleMsgListener.dart';
import 'package:tencent_im_sdk_plugin/enum/log_level.dart';
import 'package:tencent_im_sdk_plugin/manager/v2_tim_manager.dart';
import 'package:tencent_im_sdk_plugin/models/v2_tim_conversation.dart';
import 'package:tencent_im_sdk_plugin/models/v2_tim_message.dart';
import 'package:tencent_im_sdk_plugin/models/v2_tim_recv_c2c_custom_message.dart';
import 'package:tencent_im_sdk_plugin/models/v2_tim_user_info.dart';
import 'package:tencent_im_sdk_plugin/tencent_im_sdk_plugin.dart';

class IMService {
  IMService(String userId, int roomId) {
    _userId = userId;
    _roomId = roomId;
  }

  late final String _userId;
  late final int _roomId;

  V2TIMManager timManager = TencentImSDKPlugin.v2TIMManager;

  Future<void> init() async {
    await timManager.initSDK(
      sdkAppID: Config.tencent.sdkAppId,
      loglevel: LogLevel.V2TIM_LOG_DEBUG,
      listener: V2TimSDKListener(
        onConnectFailed: (code, error) {
          Logger().e(code);
          Logger().e(error);
        },
        onConnectSuccess: () {
          Logger().e("onConnectSuccess");
        },
        onConnecting: () {
          Logger().e("onnection");
        },
        onKickedOffline: () {
          Logger().e("onKickedOffline");
        },
        onSelfInfoUpdated: (info) {},
        onUserSigExpired: () {},
      ),
    );

    Logger().i("initSDK");
    //简单监听
    await timManager.login(
        userID: _userId,
        userSig: TencentUserSigService.generateUserSig(_userId));
  }

  Future<void> joinGroup(int groupID) {
    return timManager.joinGroup(groupID: groupID.toString(), message: "");
  }

  void addListener(OnReceiveMessageCallback receiver) {
    Logger().e("addListener");
    timManager.v2TIMMessageManager.addAdvancedMsgListener(
      listener: V2TimAdvancedMsgListener(
        onRecvNewMessage: (msg) {
          Logger().e(msg);
          final text = msg.textElem?.text;
          if (text == null) return;
          final decoded = json.decode(text) as Map<String, dynamic>;
          receiver(IMMessage.fromJson(decoded));
        },
      ),
    );
  }

  Future<void> sendMessage(
      {required String key, String? content, required String userID}) {
    final message = IMMessage(key: key, content: content, roomID: _roomId);
    return timManager
        .sendC2CTextMessage(text: message.toJson(), userID: userID)
        .then((value) => Logger().e(value.data!.textElem!.text))
        .catchError((e) => Logger().e(e));
  }
}

typedef OnReceiveMessageCallback = void Function(IMMessage message);

class IMMessage {
  IMMessage({required this.key, this.content, this.roomID});

  IMMessage.fromJson(Map<String, dynamic> json)
      : key = json["key"] as String,
        content = json["content"] as String?,
        roomID = int.parse(json["roomID"] as String? ?? "0");

  String key;
  String? content;
  int? roomID;

  String toJson() {
    return jsonEncode(
        {"key": key, "content": content ?? "", "roomID": roomID.toString()});
  }
}

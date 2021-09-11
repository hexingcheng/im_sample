import 'dart:async';

import 'package:logger/logger.dart';
import 'package:onlylive/config.dart';
import 'package:onlylive/domain/service/tencent_sig.dart';
import 'package:tencent_trtc_cloud/trtc_cloud.dart';
import 'package:tencent_trtc_cloud/trtc_cloud_def.dart';
import 'package:tencent_trtc_cloud/trtc_cloud_listener.dart';

class TRTCService {
  TRTCService(String fanUUID) {
    _fanUUID = fanUUID;
  }
  late final TRTCCloud _instance;
  late final String _fanUUID;

  static const String _fanPrefix = "fan_";

  Future<void> init() {
    return TRTCCloud.sharedInstance().then((instance) {
      if (instance == null) {
        throw NullThrownError();
      }
      _instance = instance;
      _instance.registerListener(_onRtcListener);
    });
  }

  void dispose() {
    _instance
      ..unRegisterListener(_onRtcListener)
      ..exitRoom();
    TRTCCloud.destroySharedInstance();
  }

  Future<void> enterRoom(int roomId) {
    final userSig =
        TencentUserSigService.generateUserSig(_fanPrefix + _fanUUID);
    return _instance.enterRoom(
      TRTCParams(
        sdkAppId: Config.tencent.sdkAppId,
        userId: _fanPrefix + _fanUUID,
        userSig: userSig,
        strRoomId: roomId.toString(),
        roomId: roomId,
      ),
      TRTCCloudDef.TRTC_APP_SCENE_VIDEOCALL,
    );
  }

  Future<void> renderView(String talentUUID, int viewId) async {
    try {
      Logger().i(talentUUID);
      _instance.startRemoteView(
          talentUUID, TRTCCloudDef.TRTC_VIDEO_STREAM_TYPE_BIG, viewId);

      // trtcInstanece!.startPublishStream(TRTCCloudDef.TRTC_AUDIO_QUALITY_SPEECH);
      // trtcInstanece!.startLocalAudio(TRTCCloudDef.TRTC_AUDIO_QUALITY_SPEECH);
      // trtcInstanece!.stopLocalAudio();
    } catch (e) {
      Logger().i("ddddddddddddddddddd");
      print("ddddddddddddddddddd");
      print(e);
    }
  }

  Future<void> startLocalAudio() async {
    await _instance.startLocalAudio(TRTCCloudDef.TRTC_AUDIO_QUALITY_SPEECH);
  }

  Future<void> stopLocalAudio() async {
    await _instance.stopLocalAudio();
  }

  var localNetworkQualityController = StreamController<NetworkQuality>();

  void addNetworkQualityListener(Function(NetworkQuality) receiver) {
    localNetworkQualityController.stream.listen(receiver);
  }

  void _onRtcListener(TRTCCloudListener type, dynamic params) {
    if (type == TRTCCloudListener.onError) {
      Logger().e("エラーがおきたー" + params['errMsg'].toString());
    }
    if (type == TRTCCloudListener.onStartPublishing) {
      print("startしたーーーー");
    }
    if (type == TRTCCloudListener.onUserVideoAvailable) {
      print("userしゅとくｓちあー");
    }
    if (type == TRTCCloudListener.onNetworkQuality) {
      final networkParams =
          OnNetworkQualityParams.fromJson(params as Map<String, dynamic>);
      final localQ = networkParams.localQuality.quality;
      if (localQ == TRTCCloudDef.TRTC_QUALITY_Excellent ||
          localQ == TRTCCloudDef.TRTC_QUALITY_Good ||
          localQ == TRTCCloudDef.TRTC_QUALITY_Poor) {
        localNetworkQualityController.sink.add(NetworkQuality.good);
      }

      if (localQ == TRTCCloudDef.TRTC_QUALITY_Bad ||
          localQ == TRTCCloudDef.TRTC_QUALITY_Down ||
          localQ == TRTCCloudDef.TRTC_QUALITY_Vbad) {
        localNetworkQualityController.sink.add(NetworkQuality.bad);
      }

      Logger().i("zzzzzzzz");
      final onNetworkQualityParams = params as TRTCNetworkQosParam;
      Logger().i(onNetworkQualityParams);
      switch (onNetworkQualityParams) {
      }
    }
  }
}

enum NetworkQuality {
  good,
  bad,
}

class OnNetworkQualityParams {
  OnNetworkQualityParams(
      {required this.localQuality, required this.remoteQuality});
  TRTCNetworkQuality localQuality;
  List<TRTCNetworkQuality> remoteQuality;

  static OnNetworkQualityParams fromJson(Map<String, dynamic> json) {
    final remoteQualityJson =
        json["remoteQuality"] as List<Map<String, dynamic>>;
    return OnNetworkQualityParams(
        localQuality: TRTCNetworkQuality.fromJson(
            json["localQuality"] as Map<String, dynamic>),
        remoteQuality: remoteQualityJson
            .map((e) => TRTCNetworkQuality.fromJson(e))
            .toList());
  }
}

class TRTCNetworkQuality {
  TRTCNetworkQuality(this.quality, this.userId);
  TRTCNetworkQuality.fromJson(Map<String, dynamic> json)
      : quality = json["quality"] as int,
        userId = json["userId"] as String;

  int quality;
  String userId;
}

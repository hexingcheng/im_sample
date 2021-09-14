import 'dart:async';
import 'dart:io';

import 'package:callkeep/callkeep.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:onlylive/config.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/flavor.dart';
import 'package:onlylive/infra/api/fan_repository.dart';
import 'package:uuid/uuid.dart';

class CallService {
  CallService();
  late String _number;

  final FlutterCallkeep _callKeep = FlutterCallkeep();

  final options = <String, dynamic>{
    'ios': {
      'appName': 'CallKeepDemo',
    },
    'android': {
      'alertTitle': '電話アカウントの許可が必要です',
      'alertDescription': 'タレントから着信を受けるために許可が必要です',
      'cancelButton': 'Cancel',
      'okButton': 'ok',
    },
  };

  Future<void> init() {
    return _callKeep.setup(options);
  }

  Future<bool> permission() {
    return _callKeep
        .setup(options)
        .then((value) => _callKeep.hasPhoneAccount());
  }

  Future<bool> hasPhoneAccount() {
    return Future.value(_callKeep.hasPhoneAccount()).catchError((e) {
      Logger().e("failed to has phone account: $e");
    });
  }

  Future<bool> phoneAccountPermissionRequest(BuildContext context) {
    return _callKeep.hasDefaultPhoneAccount(context, options);
  }

  // return call uuid
  Future<String> displayIncomingCall(String incomingCallNumber) {
    final callUUID = const Uuid().v4();
    return _callKeep
        .displayIncomingCall(callUUID, incomingCallNumber,
            handleType: "number", hasVideo: false)
        .then((_) => callUUID)
        .catchError((e) {
      Logger().e("failed to display incoming call: $e");
    });
  }

  void registerListner(CallTransaction callTransaction) {
    _callKeep
      ..on(CallKeepDidDisplayIncomingCall(), (event) {
        print("did display");
      })
      ..on(
          CallKeepPerformAnswerCallAction(),
          (event) => answerCallAction(
              event! as CallKeepPerformAnswerCallAction, callTransaction))
      ..on(CallKeepDidPerformDTMFAction(), (event) {})
      ..on(CallKeepDidReceiveStartCallAction(), (event) {
        print("did start");
      })
      ..on(CallKeepDidToggleHoldAction(), (event) {})
      ..on(CallKeepPerformEndCallAction(), (event) {})
      ..on(CallKeepPushKitToken(), (CallKeepPushKitToken event) {});
  }

  Future<void> answerCallAction(CallKeepPerformAnswerCallAction event,
      CallTransaction callTransaction) async {
    try {
      final startCall = _callKeep.startCall(
          event.callUUID!, _number, callTransaction.talentDisplayName);
      final fanRepo = await initFanRepository();

      await Future.wait([
        startCall,
        fanRepo.updateCallTransaction(event.callUUID!, callTransaction),
      ]);

      Timer(const Duration(seconds: 1), () {
        _callKeep
          ..setCurrentCallActive(event.callUUID!)
          ..backToForeground();
      });
    } catch (e) {
      print(e.toString());
      _callKeep.endCall(event.callUUID!);
    }
  }

  Future<FanRepository> initFanRepository() async {
    const hasEnv = bool.hasEnvironment("FLAVOR");
    if (!hasEnv) exit(0);
    const flavor = String.fromEnvironment("FLAVOR");
    print(flavor);
    await initConfig(Flavor(flavor));
    return APIFanRepository(Config.app.host);
  }
}

class CallSetting {
  CallSetting({required this.ios, required this.android});
  IosCallSetting ios;
  AndroidCallSetting android;

  Map<String, dynamic> toMap() {
    return {
      'ios': {'appName': ios.appName},
      'android': {
        'alertTitle': android.alertTitle,
        'alertDescription': android.alertDescription,
        'cancelButton': android.cancelButton,
        'okButton': android.okButton,
        'additionalPermissions': android.additionalPermissions,
      },
    };
  }
}

class IosCallSetting {
  IosCallSetting(
    this.appName,
  );

  String appName;
}

class AndroidCallSetting {
  AndroidCallSetting(
      {required this.alertTitle,
      required this.alertDescription,
      required this.cancelButton,
      required this.okButton,
      required this.additionalPermissions});

  String alertTitle;
  String alertDescription;
  String cancelButton;
  String okButton;
  List<String> additionalPermissions;
}

class CallInfo {
  CallInfo({
    required this.callUUID,
    required this.callerUUID,
    required this.callerImage,
    required this.callerName,
  });
  String callUUID;
  String callerUUID;
  String callerName;
  String callerImage;
}

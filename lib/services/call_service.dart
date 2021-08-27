import 'dart:async';
import 'dart:io';

import 'package:callkeep/callkeep.dart';
import 'package:onlylive/config.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/flavor.dart';
import 'package:onlylive/infra/api/fan_repository.dart';
import 'package:openapi/api.dart';

class CallService {
  CallService(this.callTransaction) {
    configure();
  }
  late CallTransaction callTransaction;
  late String _number;

  final FlutterCallkeep _callKeep = FlutterCallkeep();

  FlutterCallkeep get instance => _callKeep;

  void configure() {
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

    _callKeep
      ..on(CallKeepDidDisplayIncomingCall(),
          (CallKeepDidDisplayIncomingCall event) {
        print("did display");
      })
      ..on(CallKeepPerformAnswerCallAction(), answerCallAction)
      ..on(CallKeepDidPerformDTMFAction(),
          (CallKeepDidPerformDTMFAction event) {})
      ..on(CallKeepDidReceiveStartCallAction(),
          (CallKeepDidReceiveStartCallAction event) {
        print("did start");
      })
      ..on(
          CallKeepDidToggleHoldAction(), (CallKeepDidToggleHoldAction event) {})
      ..on(CallKeepDidPerformSetMutedCallAction(),
          (CallKeepDidPerformSetMutedCallAction event) {})
      ..on(CallKeepPerformEndCallAction(),
          (CallKeepPerformEndCallAction event) {
        print(
            'backgroundMessage: CallKeepPerformEndCallAction ${event.callUUID}');
      })
      ..on(CallKeepPushKitToken(), (CallKeepPushKitToken event) {});
  }

  Future<void> answerCallAction(CallKeepPerformAnswerCallAction event) async {
    event as CallKeepPerformAnswerCallAction;
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
          ..setCurrentCallActive(callTransaction.callUUID)
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
    final _client = ApiClient(basePath: Config.app.host);
    return APIFanRepository(FanServiceApi(_client));
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

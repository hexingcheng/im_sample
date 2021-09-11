import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logger/logger.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/service/call_service.dart';
import 'package:uuid/uuid.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('backgroundMessage: message => ${message.toString()}');
  _openIncomingCall(message);
}

Future<void> _openIncomingCall(RemoteMessage message) {
  final payload = message.data;
  Logger().i(payload);
  final talentDisplayName = payload['talent_display_name'] as String? ?? "";
  final fanMeetingID = payload['fan_meeting_id'] as String? ?? "";
  final reservationID = payload['reservation_id'] as String? ?? "";
  final talentUUID = payload['talent_uuid'] as String? ?? "";
  final _callKeep = CallService();
  return _callKeep
      .displayIncomingCall("07048031881")
      .then((callUUID) => _callKeep.registerListner(CallTransaction(
            callUUID: callUUID,
            talentDisplayName: talentDisplayName,
            talentUUID: talentUUID,
            fanMeetingID: 10,
            reservationID: 10,
          )));
}

enum Category { incomingCall }

extension CategoryExtenstion on Category {
  String get string {
    switch (this) {
      case Category.incomingCall:
        return "INCOMING_CALL";
      default:
        return "";
    }
  }
}

class FCMService {
  FCMService() {
    FirebaseMessaging.onMessageOpenedApp.listen(openAppHandler);
    FirebaseMessaging.onMessage.listen(_onMessage);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging.instance.getInitialMessage().then(openAppHandler);
    FirebaseMessaging.instance.getInitialMessage().then(openAppHandler);
  }

  String toStringFromCategory(Category category) {
    Category.incomingCall.toString();
    return category.toString();
  }

  static final FirebaseMessaging _instance = FirebaseMessaging.instance;
  // BuildContext context;

  static Future<String?> getToken() async {
    return _instance.getToken();
  }

  Future<void> _onMessage(RemoteMessage message) async {
    final payload = message.data;
    try {
      _openIncomingCall(message);
    } catch (e) {
      print(e);
    }
  }

  void openAppHandler(RemoteMessage? message) {
    if (message == null || message.category == null) return;
    final category = message.category;

    if (category == Category.incomingCall.string) {
      _openIncomingCall(message);
    }
  }
}

// final callSetting = CallSetting(
//   ios: IosCallSetting('CallKeepDemo'),
//   android: AndroidCallSetting(
//     alertTitle: 'Permissions required',
//     alertDescription: 'This application needs to access your phone accounts',
//     cancelButton: 'Cancel',
//     okButton: 'ok',
//     additionalPermissions: [],
//   ),
// );

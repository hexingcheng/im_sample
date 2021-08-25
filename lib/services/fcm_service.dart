import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/services/call_service.dart';
import 'package:uuid/uuid.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('backgroundMessage: message => ${message.toString()}');
  _openIncomingCall(message);
}

Future<void> _openIncomingCall(RemoteMessage message) async {
  final payload = message.data;
  final callerId = payload['caller_id'] as String? ?? "callerId";
  final callerName = payload['caller_name'] as String? ?? "caller_name";
  final callUUUD = const Uuid().v4();
  // final _callKeep = CallService(CallTransaction(
  //   callUUID: "",
  //   talentDisplayName: callerName,
  //   talentUUID: callerId,
  //   fanMeetingID: 0,
  //   reservationID: 0,
  //   itemCode: "",
  //   fanUUID: "",
  //   balance: 0,
  //   updatedAt: DateTime(0),
  // )).instance;
  // await _callKeep.displayIncomingCall(callUUUD, "07048031881",
  //     handleType: "number", hasVideo: false);
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

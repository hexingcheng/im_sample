import 'package:flutter/foundation.dart';

enum IMSendKeys { chekiRequest, extendRequest }

extension IMSendKeysExtension on IMSendKeys {
  String get string => describeEnum(this);
}

extension IMReceiveKeysExtension on IMReceiveKeys {
  String get string => describeEnum(this);
}

enum IMReceiveKeys { didTookCheki, blockFan, callRemainTime, endFanmeeting }

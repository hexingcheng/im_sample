import 'package:onlylive/domain/entities/talent.dart';

class FanMeeting {
  FanMeeting({
    required this.id,
    required this.itemCode,
    required this.limitedPeople,
    required this.talent,
    required this.state,
    required this.isExtension,
    required this.eventDate,
    required this.secondsPerReservation,
    required this.style,
    required this.thumbnailMovieUri,
    required this.flvUri,
  });

  int id;
  ItemCode itemCode;
  int limitedPeople;
  Talent talent;
  FanMeetingState state;
  IsExtension isExtension;
  DateTime eventDate;
  int secondsPerReservation;
  FanMeetingStyle style;
  String thumbnailMovieUri;
  String flvUri;
}

typedef ItemCode = String;

enum FanMeetingState { unknown, finish, now, future, cancel, notHeld }

extension FanMeetingStateExtention on FanMeetingState {
  String string() {
    switch (this) {
      case FanMeetingState.now:
        return "now";
      case FanMeetingState.future:
        return "future";
      case FanMeetingState.finish:
        return "finish";
      case FanMeetingState.cancel:
        return "cancenl";
      case FanMeetingState.notHeld:
        return "nowHeld";
      case FanMeetingState.unknown:
        return "unknown";
    }
  }
}

enum FanMeetingStyle { unknown, regular, serial }

enum IsExtension { unknown, ok, ng }

extension ItemCodeExtention on ItemCode {
  int coinNum() {
    final coinNum = itemCodeMap[this];
    if (coinNum == null) return throw Exception("not found item code");
    return coinNum;
  }
}

Map<String, int> itemCodeMap = {
  "item000": 0,
  "item001": 300,
  "item002": 500,
  "item003": 750,
  "item004": 1000,
  "item005": 1250,
  "item006": 1500,
  "item007": 1750,
  "item008": 2000,
  "item009": 3000,
  "item010": 4000,
  "item011": 5000,
  "item012": 6000,
  "item013": 7000,
  "item014": 8000,
  "item015": 9000,
  "item016": 10000,
};

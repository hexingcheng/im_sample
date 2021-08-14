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
    required this.startTime,
    required this.finishTime,
    required this.secondsPerReservation,
    required this.style,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String itemCode;
  int limitedPeople;
  Talent talent;
  FanMeetingState state;
  IsExtension isExtension;
  DateTime eventDate;
  DateTime startTime;
  DateTime finishTime;
  int secondsPerReservation;
  FanMeetingStyle style;
  DateTime createdAt;
  DateTime updatedAt;
}

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

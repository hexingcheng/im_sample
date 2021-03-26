class FanMeeting {
  FanMeeting({
    required this.id,
    required this.talentUUID,
    required this.itemCode,
    required this.limitedPeople,
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
  String talentUUID;
  String itemCode;
  int limitedPeople;
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

enum FanMeetingStyle { unknown, regular, serial }

enum IsExtension { unknow, ok, ng }

import 'package:onlylive/domain/entities/fan_meeting.dart';

class FanMeetingAndReserved {
  FanMeetingAndReserved(
      {required this.fanMeeting,
      required this.waitSeconds,
      required this.isSoldout});
  final FanMeeting fanMeeting;
  final int waitSeconds;
  final bool isSoldout;
}

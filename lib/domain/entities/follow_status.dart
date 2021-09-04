import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/talent.dart';

class FollowStatus {
  FollowStatus(
      {required this.talent,
      required this.isFollow,
      required this.followerNum});
  final Talent talent;
  final bool isFollow;
  final int followerNum;
}

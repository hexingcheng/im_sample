import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/talent.dart';

class TalentFollowInfo {
  TalentFollowInfo(
      {required this.talent,
      required this.isFollow,
      required this.followerNum});
  final Talent talent;
  final bool isFollow;
  final int followerNum;
}

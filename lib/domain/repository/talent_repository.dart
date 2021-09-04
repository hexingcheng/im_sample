import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/entities/follow_status.dart';

abstract class TalentRepository {
  // getTalent is fan getter
  Future<FollowStatus> getTalent({String? fanUUID, required String talentID});
}

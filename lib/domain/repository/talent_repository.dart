import 'package:onlylive/domain/entities/talent.dart';

abstract class TalentRepository {
  // getTalent is fan getter
  Future<Talent> getTalent(String talentID);
}

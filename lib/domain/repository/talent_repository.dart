import 'package:onlylive/domain/entities/talent.dart';

abstract class TalentRepository {
  // getTalent is fan getter
  Future<Map<Talent, bool?>> getTalent(String talentID);
}

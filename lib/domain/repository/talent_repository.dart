import 'package:onlylive/domain/entities/talent.dart';

mixin TalentRepository {
  // getTalent is fan getter
  Future<Talent> getTalent(String talentID);
}

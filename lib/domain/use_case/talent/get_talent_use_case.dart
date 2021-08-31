import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/repository/talent_repository.dart';

class GetTalentUseCase {
  GetTalentUseCase(this._talentRepo);
  final TalentRepository _talentRepo;

  Future<Map<Talent, bool?>> execute(String talentID) async {
    return _talentRepo.getTalent(talentID);
  }
}

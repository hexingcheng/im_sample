import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/domain/repository/talent_repository.dart';

class TalentUseCase {
  TalentUseCase(this._talentRepo);
  final TalentRepository _talentRepo;

  Future<Talent> get(String talentID) async {
    return _talentRepo.getTalent(talentID);
  }
}

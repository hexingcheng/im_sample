import 'package:onlylive/domain/entities/follow_status.dart';
import 'package:onlylive/domain/repository/talent_repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';

class GetTalentUseCase {
  GetTalentUseCase(this._talentRepo);
  final TalentRepository _talentRepo;

  Future<FollowStatus> execute(String talentUUID) async {
    final fanUUID = SharedPrefrencesService.getUUID();
    return _talentRepo.getTalent(fanUUID: fanUUID, talentID: talentUUID);
  }
}

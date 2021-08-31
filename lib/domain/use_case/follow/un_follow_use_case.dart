import 'package:onlylive/domain/repository/follow_repository.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class UnFollowUseCase extends UseCase {
  UnFollowUseCase(this._followRepository);
  final FollowRepository _followRepository;

  Future<void> execute(
    String talentID,
  ) async {
    try {
      final uuid = SharedPrefrencesService.getUUID();

      final apiToken = SharedPrefrencesService.getApiToken();
      if (uuid != null && apiToken != null) {
        await _followRepository.delete(
            apiToken: apiToken, fanUUID: uuid, talentID: talentID);
      }
    } on ApiError catch (e) {
      UseCase.useCaseErr(e);
    }
  }
}

import 'package:onlylive/domain/repository/follow_repository.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class FollowUseCase extends UseCase {
  FollowUseCase(this._followRepository);
  final FollowRepository _followRepository;

  Future<void> execute(String talentID) async {
    try {
      final uuid = SharedPrefrencesService.getUUID();

      Future<void> follow() async {
        final apiToken = SharedPrefrencesService.getApiToken();
        if (uuid != null && apiToken != null) {
          await _followRepository.create(
              apiToken: apiToken, fanUUID: uuid, talentID: talentID);
        }
      }

      await follow.retry();
    } on ApiError catch (e) {
      UseCase.useCaseErr(e);
    }
  }
}

import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:openapi/api.dart';

class UpdateDisplayNameUseCase extends UseCase {
  UpdateDisplayNameUseCase(this._fanRepo);
  final FanRepository _fanRepo;

  Future<void> execute({
    required String displayName,
  }) async {
    final uuid = SharedPrefrencesService.getUUID();

    Future<void> updateDisplayName() async {
      final apiToken = SharedPrefrencesService.getApiToken();
      await _fanRepo.updateDisplayName(
          accessToken: apiToken!,
          uuid: uuid!,
          displayName: displayName,
          option: 1);
    }

    try {
      await updateDisplayName.retry();
    } on ApiError catch (e) {
      throw UseCase.useCaseErr(e);
    }
  }
}

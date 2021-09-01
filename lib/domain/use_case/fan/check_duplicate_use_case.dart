import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:openapi/api.dart';

class CheckDuplicateAnnotationIdUseCase extends UseCase {
  CheckDuplicateAnnotationIdUseCase(this._fanRepo);
  final FanRepository _fanRepo;

  Future<void> execute({
    required String annotationId,
    required DateTime birth,
  }) async {
    try {
      final uuid = SharedPrefrencesService.getUUID();

      Future<void> checkDuplicate() async {
        final apiToken = SharedPrefrencesService.getApiToken();
        await _fanRepo.updateAnnotationIdAndBirth(
            accessToken: apiToken!,
            uuid: uuid!,
            annotationId: annotationId,
            birth: birth,
            option: 1);
      }

      await checkDuplicate.retry();
    } on ApiError catch (e) {
      throw UseCase.useCaseErr(e);
    }
  }
}

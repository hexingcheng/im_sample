import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:openapi/api.dart';

class UpdateAnnotationIdAndBirthUseCase extends UseCase {
  UpdateAnnotationIdAndBirthUseCase(this._fanRepo);
  final FanRepository _fanRepo;

  Future<void> execute({
    required String annotationId,
    required DateTime birth,
  }) async {
    final uuid = SharedPrefrencesService.getUUID();

    Future<void> updateAnnotationIdAndBirth() async {
      final apiToken = SharedPrefrencesService.getApiToken();
      _fanRepo.updateAnnotationIdAndBirth(
          accessToken: apiToken!,
          uuid: uuid!,
          annotationId: annotationId,
          birth: birth,
          option: 0);
    }

    try {
      await UseCase.retryAuth(() async {
        final apiToken = SharedPrefrencesService.getApiToken();
        _fanRepo.updateAnnotationIdAndBirth(
            accessToken: apiToken!,
            uuid: uuid!,
            annotationId: annotationId,
            birth: birth,
            option: 0);
      });
    } on ApiError catch (e) {
      throw UseCase.useCaseErr(e);
    }
  }
}

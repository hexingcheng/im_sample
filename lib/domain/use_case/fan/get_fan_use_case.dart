import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetFanUseCase extends UseCase {
  GetFanUseCase(this._fanRepo);
  final FanRepository _fanRepo;

  Future<Fan> execute() {
    final fanUUID = SharedPrefrencesService.getUUID();

    return UseCase.retryAuth(() async {
      final apiToken = SharedPrefrencesService.getApiToken();
      if (fanUUID == null || apiToken == null) {
        throw NotFonudAuthenticationInformation();
      }
      return UseCase.retryAuth(() => _fanRepo.getFan(apiToken, fanUUID))
          .catchError((e) => throw UseCase.useCaseErr(e as ApiError));
    });
  }
}

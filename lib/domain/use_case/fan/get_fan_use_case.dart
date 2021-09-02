import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetFanUseCase extends UseCase {
  GetFanUseCase(this._fanRepo);
  final FanRepository _fanRepo;

  Future<Fan> execute(String fanUUID) {
    return UseCase.retryAuth(() => _fanRepo.getFan(fanUUID))
        .catchError((e) => throw UseCase.useCaseErr(e as ApiError));
  }
}

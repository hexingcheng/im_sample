import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class UpdateCallTransactionUseCase extends UseCase {
  UpdateCallTransactionUseCase(this._fanRepository);
  final FanRepository _fanRepository;

  Future<void> execute(CallTransaction callTransaction) {
    final fanUUID = SharedPrefrencesService.getUUID();
    if (fanUUID == null) throw NotFonudAuthenticationInformation();

    return UseCase.retryAuth(() =>
            _fanRepository.updateCallTransaction(fanUUID, callTransaction))
        .catchError((e) => throw UseCase.useCaseErr(e as ApiError));
  }
}

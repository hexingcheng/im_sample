import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetCallTransactionUseCase extends UseCase {
  GetCallTransactionUseCase(this._fanRepository);
  final FanRepository _fanRepository;

  Future<CallTransaction> execute() {
    final fanUUID = SharedPrefrencesService.getUUID();
    if (fanUUID == null) throw NotFonudAuthenticationInformation();

    return UseCase.retryAuth(() => _fanRepository.getCallTransaction(fanUUID))
        .catchError((e) => throw UseCase.useCaseErr(e as ApiError));
  }
}

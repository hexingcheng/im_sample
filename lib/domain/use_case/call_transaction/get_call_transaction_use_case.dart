import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetCallTransactionUseCase extends UseCase {
  GetCallTransactionUseCase(this._fanRepository);
  final FanRepository _fanRepository;

  Future<CallTransaction> execute(String fanUUID) async {
    return _fanRepository.getCallTransaction(fanUUID);
  }
}

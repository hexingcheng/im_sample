import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';

class CallTransactionUseCase {
  CallTransactionUseCase(this._fanRepository);
  final FanRepository _fanRepository;

  Future<CallTransaction> get(String fanUUID) async {
    return _fanRepository.getCallTransaction(fanUUID);
  }
}

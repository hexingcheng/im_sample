import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/entities/fan.dart';

abstract class FanRepository {
  // getFan is fan getter
  Future<Fan> getFan(String fanUUID);
  // getCallTransaction is callTransaction getter
  Future<CallTransaction> getCallTransaction(String fanUUID);
  // getCallTransaction is callTransaction getter
  Future<void> updateCallTransaction(
      String fanUUID, CallTransaction callTransaction);
}

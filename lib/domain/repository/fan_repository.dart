import 'package:onlylive/domain/entities/call_transaction.dart';
import 'package:onlylive/domain/entities/fan.dart';

abstract class FanRepository {
  // getFan is fan getter
  Future<Fan> getFan(String apiToken, String fanUUID);

  // updateAnnotaionIdAndBirth
  Future<void> updateAnnotationIdAndBirth(
      {required String accessToken,
      required String uuid,
      required String annotationId,
      required DateTime birth,
      required int option});

  // updateDisplayName
  Future<void> updateDisplayName(
      {required String accessToken,
      required String uuid,
      required String displayName,
      required int option});

  // getCallTransaction is callTransaction getter
  Future<CallTransaction> getCallTransaction(String fanUUID);
  // getCallTransaction is callTransaction getter
  Future<void> updateCallTransaction(
      String fanUUID, CallTransaction callTransaction);
}

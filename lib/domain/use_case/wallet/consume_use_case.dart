import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/repository/wallet_repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/errors.dart';

class ConsumeUseCase {
  ConsumeUseCase(this._walletRepo);
  final WalletRepository _walletRepo;

  Future<void> execute({
    required int fanMeetingId,
    required int numExtension,
  }) async {
    final fanUUID = SharedPrefrencesService.getUUID();
    final apiToken = SharedPrefrencesService.getApiToken();
    if (apiToken == null || fanUUID == null)
      throw NotFonudAuthenticationInformation();

    return _walletRepo.consume(
        apiToken: apiToken,
        fanUUID: fanUUID,
        fanMeetingId: fanMeetingId,
        numExtension: numExtension);
  }
}

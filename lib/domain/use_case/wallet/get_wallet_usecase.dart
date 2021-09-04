import 'package:onlylive/domain/entities/wallet.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/wallet_repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetWalletUseCase extends UseCase {
  GetWalletUseCase(this._walletRepository);
  final WalletRepository _walletRepository;

  Future<Wallet> execute() {
    final fanUUID = SharedPrefrencesService.getUUID();

    return UseCase.retryAuth(() {
      final apiToken = SharedPrefrencesService.getApiToken();
      if (fanUUID == null || apiToken == null) {
        throw NotFonudAuthenticationInformation();
      }
      return _walletRepository
          .getWallet(apiToken, fanUUID)
          .then((value) => value)
          .catchError((e) => throw UseCase.useCaseErr(e as ApiError));
    });
  }
}

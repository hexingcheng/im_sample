import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/entities/wallet.dart';
import 'package:onlylive/domain/repository/wallet_repository.dart';

class GetWalletUseCase {
  GetWalletUseCase(this._walletRepo);
  final WalletRepository _walletRepo;

  Future<Wallet> execute(String fanUUID) async {
    return _walletRepo.getWallet("", fanUUID);
  }
}

import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/entities/wallet.dart';
import 'package:onlylive/domain/repository/wallet_repository.dart';

class WalletUseCase {
  WalletUseCase(this._walletRepo);
  final WalletRepository _walletRepo;

  Future<Wallet> get(String fanUUID) async {
    return _walletRepo.getWallet("", fanUUID);
  }
}

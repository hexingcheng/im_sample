import 'package:onlylive/domain/entities/wallet.dart';

abstract class WalletRepository {
  // getWallet is wallet getter
  Future<Wallet> getWallet(String accessToken, String fanUUID);
}

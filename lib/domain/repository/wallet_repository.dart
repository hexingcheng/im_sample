import 'package:onlylive/domain/entities/wallet.dart';

abstract class WalletRepository {
  // getWallet is wallet getter
  Future<Wallet> getWallet(String accessToken, String fanUUID);

  // consume is consume the balance
  Future<void> consume(
      {required String apiToken,
      required String fanUUID,
      required int fanMeetingId,
      required int numExtension});
}

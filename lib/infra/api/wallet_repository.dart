import 'package:onlylive/domain/entities/wallet.dart';
import 'package:onlylive/domain/repository/wallet_repository.dart';
import 'package:onlylive/infra/api/client.dart';
import 'package:http/http.dart' as http;

class APIWalletRepository implements WalletRepository {
  APIWalletRepository(this._client);
  final APIClient _client;

  @override
  Future<Wallet> getWallet(String accessToken, String fanUUID) async {
    return Wallet(
        id: "id",
        serviceId: "serviceId",
        userId: "userId",
        currencyId: "currencyId",
        balance: 900,
        paidBalance: 90,
        earnedBalance: 90,
        pointBalance: 90,
        breakDown: []);
  }
}

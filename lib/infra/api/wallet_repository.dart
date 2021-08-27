import 'package:onlylive/domain/entities/wallet.dart';
import 'package:onlylive/domain/repository/wallet_repository.dart';
import 'package:http/http.dart' as http;
import 'package:onlylive/infra/mapper/wallet/wallet_mapper.dart';
import 'package:openapi/api.dart';

class APIWalletRepository implements WalletRepository {
  APIWalletRepository(this._client);
  final WalletServiceApi _client;

  @override
  Future<Wallet> getWallet(String accessToken, String fanUUID) async {
    final res = await _client.walletServiceGetBalanceByFanUUID(fanUUID);
    return WalletMapper.decode(res);
  }
}

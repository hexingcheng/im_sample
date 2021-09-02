import 'package:onlylive/domain/entities/wallet.dart';
import 'package:onlylive/domain/repository/wallet_repository.dart';
import 'package:http/http.dart' as http;
import 'package:onlylive/infra/mapper/wallet/wallet_mapper.dart';
import 'package:openapi/api.dart';

class APIWalletRepository implements WalletRepository {
  APIWalletRepository(this._basePath);
  final String _basePath;

  @override
  Future<Wallet> getWallet(String accessToken, String fanUUID) async {
    final service = WalletServiceApi(ApiClient(basePath: _basePath));

    final res = await service.walletServiceGetBalanceByFanUUID(fanUUID);
    return WalletMapper.decode(res);
  }
}

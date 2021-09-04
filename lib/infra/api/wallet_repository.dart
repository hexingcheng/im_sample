import 'package:onlylive/domain/entities/wallet.dart';
import 'package:onlylive/domain/repository/wallet_repository.dart';
import 'package:onlylive/infra/api/repository.dart';
import 'package:onlylive/infra/mapper/wallet/wallet_mapper.dart';
import 'package:openapi/api.dart';

class APIWalletRepository extends Repository implements WalletRepository {
  APIWalletRepository(this._basePath);
  final String _basePath;

  @override
  Future<Wallet> getWallet(String apiToken, String fanUUID) {
    final service =
        WalletServiceApi(ApiClient(basePath: _basePath)..addApiToken(apiToken));

    return service
        .walletServiceGetBalanceByFanUUID(fanUUID)
        .then(WalletMapper.decode)
        .catchError((e) => throw Repository.apiException(e as ApiException));
  }
}

import 'package:onlylive/domain/entities/wallet.dart';
import 'package:onlylive/infra/mapper/wallet/braek_down_mapper.dart';
import 'package:openapi/api.dart';

class WalletMapper {
  static Wallet decode(GrpcWallet grpc) {
    return Wallet(
      id: grpc.walletId,
      serviceId: grpc.serviceId,
      userId: grpc.userId,
      currencyId: grpc.currencyId,
      balance: grpc.balance,
      paidBalance: grpc.paidBalance,
      earnedBalance: grpc.earnedBalance,
      pointBalance: grpc.pointBalance,
      breakDown: grpc.breakDown.map(BreakDownMapper.decode).toList(),
    );
  }
}

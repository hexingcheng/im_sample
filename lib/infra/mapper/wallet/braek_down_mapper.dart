import 'package:onlylive/domain/entities/wallet.dart';
import 'package:onlylive/infra/mapper/time_stamp_mapper.dart';
import 'package:openapi/api.dart';

class BreakDownMapper {
  static BreakDown decode(GrpcBreakDown grpc) {
    return BreakDown(
      point: grpc.point,
      expireDate: TimeStampMapper.decode(grpc.expireDate),
    );
  }
}

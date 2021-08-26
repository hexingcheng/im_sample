import 'package:onlylive/domain/entities/sex.dart';
import 'package:openapi/api.dart';
import 'package:recase/recase.dart';

class SexMapper {
  static final sexes = Sex.values.toList();

  static Sex decode(GrpcFanSex grpc) {
    return sexes.firstWhere(
        (sex) => ReCase(sex.toString().split('.')[1]).snakeCase == grpc.value);
  }
}

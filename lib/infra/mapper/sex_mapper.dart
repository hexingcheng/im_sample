import 'package:onlylive/domain/entities/sex.dart';
import 'package:openapi/api.dart';

class SexMapper {
  static const sexMap = {
    Sex.undfiend: GrpcFanSex.undefined,
    Sex.unknown: GrpcFanSex.unknown,
    Sex.man: GrpcFanSex.man,
    Sex.woman: GrpcFanSex.woman,
  };

  static Sex decode(GrpcFanSex grpc) {
    return sexMap.entries.firstWhere((element) => element.value == grpc).key;
  }

  static GrpcFanSex encode(Sex sex) {
    return sexMap.entries.firstWhere((element) => element.key == sex).value;
  }
}

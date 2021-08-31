import 'package:onlylive/domain/entities/sex.dart';
import 'package:openapi/api.dart';

class SexMapper {
  static const sexMap = {
    Sex.unknown: GrpcFanSex.number0,
    Sex.man: GrpcFanSex.number1,
    Sex.woman: GrpcFanSex.number2,
    Sex.undfiend: GrpcFanSex.number3,
  };

  static Sex decode(GrpcFanSex grpc) {
    return sexMap.entries.firstWhere((element) => element.value == grpc).key;
  }

  static GrpcFanSex encode(Sex sex) {
    return sexMap.entries.firstWhere((element) => element.key == sex).value;
  }
}

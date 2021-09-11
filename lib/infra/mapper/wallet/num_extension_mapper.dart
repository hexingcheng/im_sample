import 'package:onlylive/domain/entities/sex.dart';
import 'package:openapi/api.dart';

class NumExtensionMapper {
  static const Map<int, GrpcNumExtension> numExtensionMap = {
    0: GrpcNumExtension.number0,
    1: GrpcNumExtension.number1,
    2: GrpcNumExtension.number2,
    3: GrpcNumExtension.number3,
  };

  static int decode(GrpcNumExtension grpc) {
    return numExtensionMap.entries
        .firstWhere((element) => element.value == grpc)
        .key;
  }

  static GrpcNumExtension encode(int numExtension) {
    return numExtensionMap.entries
        .firstWhere((element) => element.key == numExtension)
        .value;
  }
}

import 'package:openapi/api.dart';

class OptionMapper {
  static const optionMap = {0: GrpcOption.number0, 1: GrpcOption.number1};

  static GrpcOption encode(int option) {
    return optionMap.entries
        .firstWhere((element) => element.key == option)
        .value;
  }
}

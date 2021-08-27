import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:openapi/api.dart';

class IsExtensionMapper {
  static const isExtensionMap = {
    IsExtension.unknown: GrpcIsExtension.extensionUnknown,
    IsExtension.ok: GrpcIsExtension.true_,
    IsExtension.ng: GrpcIsExtension.false_,
  };

  static IsExtension decode(GrpcIsExtension grpc) {
    return isExtensionMap.entries
        .firstWhere((element) => element.value == grpc)
        .key;
  }

  static GrpcIsExtension encode(IsExtension isExtension) {
    return isExtensionMap.entries
        .firstWhere((element) => element.key == isExtension)
        .value;
  }
}

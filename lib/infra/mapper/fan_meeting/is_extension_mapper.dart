import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:openapi/api.dart';
import 'package:recase/recase.dart';

class IsExtensionMapper {
  static final isExtensions = IsExtension.values.toList();

  static IsExtension decode(GrpcIsExtension grpc) {
    return isExtensions.firstWhere((state) =>
        ReCase(isExtensions.toString().split('.')[1]).snakeCase == grpc.value);
  }
}

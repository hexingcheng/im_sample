import 'package:onlylive/domain/entities/fan_meeting.dart';
import 'package:onlylive/domain/entities/talent.dart';

class IsExtensionMapper {
  static Map<IsExtension, int> isExtensionMap = {
    IsExtension.unknown: 0,
    IsExtension.ng: 1,
    IsExtension.ok: 2,
  };

  static IsExtension decode(int isExtension) {
    return isExtensionMap.keys.firstWhere(
        (k) => isExtensionMap[k] == isExtension,
        orElse: () => IsExtension.unknown);
  }
}

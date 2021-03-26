import 'package:onlylive/domain/entities/app_config.dart';

class AppConfigDTO {
  static AppConfig fromJSON(Map<String, dynamic> json) {
    return AppConfig(
      isMaintenance: json["is_maintenance"] as bool,
      forceUpdateAndroidVersion: json["force_update_ios_version"] as String,
    );
  }
}

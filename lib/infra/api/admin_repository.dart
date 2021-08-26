import 'package:onlylive/config.dart';
import 'package:onlylive/domain/entities/app_config.dart';
import 'package:onlylive/domain/repository/admin_repository.dart';
import 'package:onlylive/infra/mapper/app_config_mapper.dart';

class APIAdminRepository implements AdminRepository {
  APIAdminRepository();

  @override
  Future<AppConfig> getAppConfig() async {
    // final res = await _client.get(Config.app.configPath,
    //     fromJson: AppConfigMapper.fromJSON);
    return AppConfig(forceUpdateAndroidVersion: "1.0.0", isMaintenance: false);
  }
}

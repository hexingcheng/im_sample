import 'package:onlylive/domain/entities/app_config.dart';

abstract class AdminRepository {
  // getAppConfig is AppConfig gettter
  Future<AppConfig> getAppConfig();
}

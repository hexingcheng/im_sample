import 'package:onlylive/domain/entities/app_config.dart';
import 'package:onlylive/domain/repository/admin_repository.dart';

class AppConfigUseCase {
  AppConfigUseCase(this._adminRepository);
  final AdminRepository _adminRepository;

  Future<AppConfig> get() async {
    return _adminRepository.getAppConfig();
  }
}

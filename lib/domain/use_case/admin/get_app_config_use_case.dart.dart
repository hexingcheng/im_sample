import 'package:onlylive/domain/entities/app_config.dart';
import 'package:onlylive/domain/repository/admin_repository.dart';
import 'package:onlylive/domain/use_case/use_case.dart';

class GetAppConfigUseCase extends UseCase {
  GetAppConfigUseCase(this._adminRepository);
  final AdminRepository _adminRepository;

  @override
  Future<AppConfig> execute() async {
    return _adminRepository.getAppConfig();
  }
}

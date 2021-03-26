import 'package:onlylive/domain/entities/fan.dart';
import 'package:onlylive/domain/repository/fan_repository.dart';

class FanUseCase {
  FanUseCase(this._fanRepo);
  final FanRepository _fanRepo;

  Future<Fan> get(String fanUUID) async {
    return _fanRepo.getFan(fanUUID);
  }
}

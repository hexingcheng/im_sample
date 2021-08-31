import 'package:onlylive/domain/repository/follow_repository.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/use_case/use_case.dart';
import 'package:onlylive/services/fcm_service.dart';

class CreateFollowUseCase extends UseCase {
  CreateFollowUseCase(this._followRepository);
  final FollowRepository _followRepository;

  Future<void> execute(String talentID) async {
    try {
      await _followRepository.create(
        talentID
      );
    } on ApiError catch (e) {
      useCaseErr(e);
    }
  }
}

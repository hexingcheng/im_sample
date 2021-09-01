import 'package:onlylive/domain/repository/auth_repository.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/use_case/use_case.dart';
import 'package:onlylive/services/fcm_service.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';

class SignUpUseCase extends UseCase {
  SignUpUseCase(this._authRepository);
  final AuthRepository _authRepository;

  static String _convertPhoneNumber(String number) {
    return "+81${number.replaceRange(0, 1, "")}";
  }

  Future<void> execute(
      {required String phoneNumber,
      required String password,
      required String firebaseToken}) async {
    try {
      final fcmToken = await FCMService.getToken();

      final auth = await _authRepository.signUp(
        phoneNumber: _convertPhoneNumber(phoneNumber),
        password: password,
        firebaseToken: firebaseToken,
        fcmToken: fcmToken,
      );
      await Future.wait([
        SharedPrefrencesService.setApiToken(auth.apiToken),
        SharedPrefrencesService.setUUID(auth.uuid),
      ]);
    } on ApiError catch (e) {
      throw UseCase.useCaseErr(e);
    }
  }
}

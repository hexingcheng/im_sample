import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/use_case/errors.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';

class UseCase {
  static Error useCaseErr(ApiError e) {
    final exception = errorMap[e.code];
    if (exception != null) {
      throw exception;
    }
    throw UseCaseError(message: e.message, code: e.code);
  }
}

extension RetryExtension<T> on Future<T> Function() {
  Future<T> retry({int count = 1}) async {
    try {
      return await this();
    } on ApiError catch (e) {
      if (e.code == ErrorCodes.tokenExpired) {
        final oldToken = SharedPrefrencesService.getApiToken();
        final newToken =
            await Repositories.authRepository.refreshToken(oldToken!);
        await SharedPrefrencesService.setApiToken(newToken);

        return retry(count: count - 1);
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}

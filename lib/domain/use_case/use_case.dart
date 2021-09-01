import 'dart:async';

import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/repository/repository.dart';
import 'package:onlylive/domain/service/shared_prefrences_service.dart';
import 'package:onlylive/domain/use_case/errors.dart';

class UseCase {
  static Error useCaseErr(ApiError e) {
    final exception = errorMap[e.code];
    if (exception != null) {
      throw exception;
    }
    throw UseCaseError(message: e.message, code: e.code);
  }

  static Future<T> retryAuth<T>(FutureOr<T> Function() function) {
    Future<T> handleError(ApiError e) {
      final oldToken = SharedPrefrencesService.getApiToken();
      return Repositories.authRepository
          .refreshToken(oldToken!)
          .then(SharedPrefrencesService.setApiToken)
          .then((_) => function());
    }

    try {
      final res = function();
      if (res is Future<T>) {
        return res.onError<ApiError>((e, stackTrace) {
          if (e.code == ErrorCodes.tokenExpired) {
            return handleError(e);
          }
          throw e;
        });
      } else {
        return Future.value(res);
      }
    } on ApiError catch (e) {
      if (e.code == ErrorCodes.tokenExpired) {
        return handleError(e);
      }
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  static Future<T> catchApiError<T>(ApiError e, {StackTrace? st}) {
    return Future.error(UseCase.useCaseErr(e));
  }
}

import 'package:flutter/scheduler.dart';
import 'package:onlylive/domain/repository/error.dart';
import 'package:onlylive/domain/use_case/errors.dart';

class UseCase {
  void useCaseErr(ClientError e) {
    switch (e.code) {
      case ErrorCode.unAuthenticated:
        throw UNAUTHENTICATED();
      case ErrorCode.notFound:
        throw NOTFOUND();
      case ErrorCode.deletedFun:
        throw DELETEDFAN();
      default:
        throw UseCaseError(message: e.message, code: e.code);
    }
  }
}

class UseCaseError extends Error {
  UseCaseError({
    required this.message,
    required this.code,
  });
  String message;
  String code;
}


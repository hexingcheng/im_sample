typedef ErrorCode = String;

class ErrorCodes {
  static const ErrorCode unAuthenticated = "UNAUTHENTICATED";
  static const ErrorCode notFound = "NOT_FOUND";
  static const ErrorCode internal = "INTERNAL";
  static const ErrorCode tokenExpired = "TOKEN_EXPIRED";
  static const ErrorCode deletedFun = "DELETED_FAN";
  static const ErrorCode existPhoneNumber = "ALREADY_EXIST_PHONE_NUMBER";
  static const ErrorCode alreadyAnnotaionId = "ALREADY_EXIST_ANNOTATION_ID";
}

class UseCaseError extends Error {
  UseCaseError({
    required this.message,
    required this.code,
  });
  String message;
  String code;
}

Map<ErrorCode, Exception> errorMap = {
  ErrorCodes.unAuthenticated: UNAUTHENTICATED(),
  ErrorCodes.notFound: NotFound(),
  ErrorCodes.alreadyAnnotaionId: AlaredyExistAnnotaionId(),
  ErrorCodes.internal: Internal(),
  ErrorCodes.tokenExpired: TokenExpired(),
  ErrorCodes.deletedFun: DELETEDFAN(),
  ErrorCodes.existPhoneNumber: ExistPhoneNumber(),
};

// exception raised when the phone number was exist.
class ExistPhoneNumber implements Exception {}

// exception raised when the unauthenticated
class UNAUTHENTICATED implements Exception {}

// exception raised when the reserouce was not found
class NotFound implements Exception {}

// exception raised when the fan was deleted
class DELETEDFAN implements Exception {}

// exception raised when the token was expired
class TokenExpired implements Exception {}

// exception raised when the token was expired
class AlaredyExistAnnotaionId implements Exception {}

// exception raised when internal error
class Internal implements Exception {}

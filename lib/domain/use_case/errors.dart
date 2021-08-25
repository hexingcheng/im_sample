class ErrorCode {
  static const unAuthenticated = "UNAUTHENTICATED";
  static const notFound = "NOT_FOUND";
  static const deletedFun = "DELETED_FAN";
}

class UNAUTHENTICATED implements Exception {}

class NOTFOUND implements Exception {}

class DELETEDFAN implements Exception {}

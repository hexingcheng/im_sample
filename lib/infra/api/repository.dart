import 'dart:convert';
import 'dart:io';

import 'package:onlylive/domain/repository/error.dart';
import 'package:openapi/api.dart';

class Repository {
  static String apiTokenHeader = "x-api-jwt";
  static String xPlatformHeader = "x-platform";
  static String authorizationHeader = "authorization";

  static String get getXPlatformValue {
    if (Platform.isIOS) {
      return "ios";
    } else {
      return "android";
    }
  }

  static ApiClient addXPlatFormHeader(ApiClient client) {
    return client..addDefaultHeader(xPlatformHeader, getXPlatformValue);
  }

  static ApiError apiException(ApiException exception) {
    final message = json.decode(exception.message) as Map<String, dynamic>;
    return ApiError(
        message: message["message"] as String? ?? "",
        code: message["code"] as String? ?? "");
  }
}

extension ApiClientExtension on ApiClient {
  void addXPlatForm() {
    addDefaultHeader(Repository.xPlatformHeader, Repository.getXPlatformValue);
  }

  void addAuthorization(String val) {
    addDefaultHeader(Repository.authorizationHeader, val);
  }

  void addApiToken(String val) {
    addDefaultHeader(Repository.apiTokenHeader, val);
  }
}

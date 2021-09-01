import 'dart:convert';
import 'dart:io';

import 'package:onlylive/domain/repository/error.dart';
import 'package:openapi/api.dart';

class Repository {
  String apiTokenHeader = "x-api-jwt";
  String xPlatformHeader = "x-platform";
  String authorizationHeader = "authorization";

  String get getXPlatformValue {
    if (Platform.isIOS) {
      return "ios";
    } else {
      return "android";
    }
  }

  ApiError apiException(ApiException exception) {
    final message = json.decode(exception.message) as Map<String, dynamic>;
    return ApiError(
        message: message["message"] as String? ?? "",
        code: message["code"] as String? ?? "");
  }
}

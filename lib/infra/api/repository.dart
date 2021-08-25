import 'dart:io';

class Repository {
  String apiTokenHeader = "x-api-jwt";
  String xPlatformHeader = "x-platform";

  String get getXPlatformValue {
    if (Platform.isIOS) {
      return "ios";
    } else {
      return "android";
    }
  }
}

import 'dart:io';
import 'package:country_codes/country_codes.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:onlylive/domain/entities/fan.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<void> openMailApp({String? fanUUID, String? annotationId}) async {
  final body = "お問い合わせの内容を明記の上、メールをお送りください。\n"
      "${_setUserID(annotationId)}"
      "【お問い合わせの内容】\n"
      "\n\n\n\n\n"
      "*****************************\n"
      "${await _setCommonInformation(fanUUID ?? "")}";

  final email = Email(
    body: body,
    subject: 'onlylive お問い合わせ',
    recipients: ['support@onlylive.jp'],
    isHTML: false,
  );
  await FlutterEmailSender.send(email);
}

String _setUserID(String? annotationID) {
  if (annotationID == null) {
    return "";
  }
  return "【ユーザーID】\n"
      "$annotationID\n";
}

Future<String> _setCommonInformation(String uuid) async {
  final packageInfo = await PackageInfo.fromPlatform();
  final os = Platform.operatingSystem;
  final systemVersion = Platform.operatingSystemVersion;

  return "下記の内容はご利用端末の情報です。\n"
      "お問い合わせ対応の際に使用させていただくため、内容修正せずに送信してください。\n"
      "この情報はお問い合わせ対応のみに使用し、対応後は破棄させていただきます。\n\n"
      "株式会社iMarke\n"
      "UUID) $uuid\n"
      "OS) $os\n"
      "OS Version) $systemVersion\n"
      "App Version) ${packageInfo.version}\n"
      "Locale Current) ${await _getLocale()}";
}

Future<String> _getLocale() async {
  await CountryCodes.init();

  final deviceLocale = CountryCodes.getDeviceLocale();
  if (deviceLocale == null) {
    return "";
  }
  return "${deviceLocale.languageCode}_${deviceLocale.countryCode}";
}

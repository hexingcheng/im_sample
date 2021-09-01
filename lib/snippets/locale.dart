import 'package:country_codes/country_codes.dart';
import 'package:flutter/material.dart';

Future<Locale> getLocale() async {
  await CountryCodes.init();
  var locale = const Locale("en");
  final deviceLocale = CountryCodes.getDeviceLocale();
  if (deviceLocale != null) {
    locale = deviceLocale;
  }
  return locale;
}

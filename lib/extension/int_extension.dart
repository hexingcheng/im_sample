import 'package:intl/intl.dart';

extension ExtensionInt on int {
  static final NumberFormat withConnmaFormatter = NumberFormat("#,###");

  // for example (1000 -> 1,000)
  String get withConnma => withConnmaFormatter.format(this);

  String zeroFill(int digit) {
    return toString().padLeft(digit, "0");
  }

  int get convertSecondsToMinutes {
    return this ~/ Duration.secondsPerMinute;
  }
}

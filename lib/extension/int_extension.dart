import 'package:intl/intl.dart';

extension ExtensionDateTime on int {
  static final NumberFormat withConnmaFormatter = NumberFormat("#,###");

  // for example (1000 -> 1,000)
  String get withConnma => withConnmaFormatter.format(this);
}

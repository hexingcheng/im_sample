extension ExtensionDateTime on DateTime {
  String _zeroFill(int time) {
    return time.toString().padLeft(2, "0");
  }

  bool get isZero => this == DateTime.fromMillisecondsSinceEpoch(0 * 1000);

  // mm/dd hh:MM -
  String get full =>
      "${_zeroFill(month)}/${_zeroFill(day)} ${_zeroFill(hour)}:${_zeroFill(minute)} -";

  // mm/dd
  String get date => "$month月$day日";
}

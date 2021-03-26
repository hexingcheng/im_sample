class TimeStamp {
  TimeStamp(this.seconds);
  int seconds = 0;

  DateTime get toDateTime =>
      DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
}

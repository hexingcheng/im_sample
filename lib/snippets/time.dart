int convertSecondsToMinutes(int seconds) {
  if (seconds < 60) {
    return seconds;
  }
  return Duration(seconds: seconds).inMinutes;
}

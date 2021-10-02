/// Extension utils for date format
extension DateTimeFormat on DateTime {
  /// Supports the following, inspired by: https://linux.die.net/man/3/strptime
  /// %Y: The year, including century (for example, 1991).
  /// %m: The month number (1-12).
  /// %d: The day of month (1-31).
  /// %H: The hour (0-23).
  /// %M: The minute (0-59).
  /// %S: The second (0-59).
  String format(String formatString) {
    final String _hourString = hour.toString();
    final String _dayString = day.toString();
    final String _monthString = month.toString();
    final String _minuteString = minute.toString();
    final String _secondString = second.toString();
    final String _yearString = year.toString();

    final Map<String, String> map = {
      '%H': _hourString.padLeft(3 - _hourString.length, '0'),
      '%d': _dayString.padLeft(3 - _dayString.length, '0'),
      '%m': _monthString.padLeft(3 - _monthString.length, '0'),
      '%M': _minuteString.padLeft(3 - _minuteString.length, '0'),
      '%S': _secondString.padLeft(3 - _secondString.length, '0'),
      '%Y': _yearString.padLeft(5 - _yearString.length, '0'),
    };
    return map.entries.fold(
        formatString,
        (String acc, MapEntry<String, String> entry) =>
            acc.replaceAll(entry.key, entry.value));
  }
}

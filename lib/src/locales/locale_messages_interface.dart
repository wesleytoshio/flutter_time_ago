/// [LocaleMessagesInterface] Interface for language
abstract class LocaleMessagesInterface {
  /// Example: `prefixAgo()` 1 min `suffixAgo()`
  String lessThanOneMinute();

  /// Example: `prefixFromNow()` 1 min `suffixFromNow()`
  String prefixAgo();

  /// Example: `prefixAgo()` 1 min `suffixAgo()`
  String prefixFromNow();

  /// Example: `prefixFromNow()` 1 min `suffixFromNow()`
  String suffixAgo();

  /// Format when time is less than a minute
  String suffixFromNow();

  /// Format when time is less than a minute
  List<String> minutes();

  /// Format when time is less than a minute
  List<String> hours();

  /// Format when time is about a minute
  List<String> weeks();

  /// Format when time is in minutes
  List<String> days();

  /// Format when time is about an hour
  List<String> months();

  /// Format when time is in hours
  List<String> years();

  /// returns a [prefix] function according to time [past] or [Future]
  prefixTimeValue(bool isPast);

  /// returns a [prefix] function according to time [past] or [Future]
  suffixTimeValue(bool isPast);
}

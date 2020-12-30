import 'locale_messages_interface.dart';

/// [English] Interface language
class EnLocale implements LocaleMessagesInterface {
  @override
  String lessThanOneMinute() => 'a moment';

  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => '';

  @override
  String suffixAgo() => 'ago';

  @override
  String suffixFromNow() => 'from now';

  @override
  List<String> minutes() => ['minute', 'minutes'];

  @override
  List<String> hours() => ['hour', 'hours'];

  @override
  List<String> days() => ['day', 'days'];

  @override
  List<String> weeks() => ['week', 'weeks'];

  @override
  List<String> months() => ['month', 'months'];

  @override
  List<String> years() => ['year', 'years'];

  @override
  prefixTimeValue(bool isPast) => isPast ? prefixAgo() : prefixFromNow();

  @override
  suffixTimeValue(bool isPast) => isPast ? suffixAgo() : suffixFromNow();
}

/// [English] Interface for short language
class EnShortLocale implements LocaleMessagesInterface {
  @override
  String lessThanOneMinute() => 'now';

  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => '';

  @override
  String suffixAgo() => '';

  @override
  String suffixFromNow() => '';

  @override
  List<String> minutes() => ['min', 'min'];

  @override
  List<String> hours() => ['h', 'h'];

  @override
  List<String> days() => ['d', 'd'];

  @override
  List<String> weeks() => ['wk', 'wk'];

  @override
  List<String> months() => ['mo', 'mo'];

  @override
  List<String> years() => ['yr', 'yr'];

  @override
  prefixTimeValue(bool isPast) => isPast ? prefixAgo() : prefixFromNow();

  @override
  suffixTimeValue(bool isPast) => isPast ? suffixAgo() : suffixFromNow();
}

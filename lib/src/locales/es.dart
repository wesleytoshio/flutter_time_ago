import 'locale_messages_interface.dart';

/// [Spanish] Interface language
class EsLocale implements LocaleMessagesInterface {
  @override
  String lessThanOneMinute() => 'un momento';

  @override
  String prefixAgo() => 'hace';

  @override
  String prefixFromNow() => 'dentro de';

  @override
  String suffixAgo() => '';

  @override
  String suffixFromNow() => '';

  @override
  List<String> minutes() => ['minuto', 'minutos'];

  @override
  List<String> hours() => ['hora', 'horas'];

  @override
  List<String> days() => ['día', 'días'];

  @override
  List<String> weeks() => ['semana', 'semanas'];

  @override
  List<String> months() => ['mes', 'meses'];

  @override
  List<String> years() => ['año', 'años'];

  @override
  prefixTimeValue(bool isPast) => isPast ? prefixAgo() : prefixFromNow();

  @override
  suffixTimeValue(bool isPast) => isPast ? suffixAgo() : suffixFromNow();
}

/// [Spanish] Interface for short language
class EsShortLocale implements LocaleMessagesInterface {
  @override
  String lessThanOneMinute() => 'ahora';

  @override
  String prefixAgo() => '';

  @override
  String prefixFromNow() => '';

  @override
  String suffixAgo() => '';

  @override
  String suffixFromNow() => '';

  @override
  List<String> minutes() => ['m', 'm'];

  @override
  List<String> hours() => ['h', 'h'];

  @override
  List<String> days() => ['d', 'd'];

  @override
  List<String> weeks() => ['sem', 'sem'];

  @override
  List<String> months() => ['mes', 'meses'];

  @override
  List<String> years() => ['año', 'años'];

  @override
  prefixTimeValue(bool isPast) => isPast ? prefixAgo() : prefixFromNow();

  @override
  suffixTimeValue(bool isPast) => isPast ? suffixAgo() : suffixFromNow();
}

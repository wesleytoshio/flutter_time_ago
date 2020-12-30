import 'locale_messages_interface.dart';

/// [Portuguese-Brazil] Interface language
class PtBrLocale implements LocaleMessagesInterface {
  @override
  String lessThanOneMinute() => 'agora';

  @override
  String prefixAgo() => 'há';

  @override
  String prefixFromNow() => 'em';

  @override
  String suffixAgo() => '';

  @override
  String suffixFromNow() => '';

  @override
  List<String> minutes() => ['minuto', 'minutos'];

  @override
  List<String> hours() => ['hora', 'horas'];

  @override
  List<String> days() => ['dia', 'dias'];

  @override
  List<String> weeks() => ['semana', 'semanas'];

  @override
  List<String> months() => ['mês', 'messes'];

  @override
  List<String> years() => ['ano', 'anos'];

  @override
  prefixTimeValue(bool isPast) => isPast ? prefixAgo() : prefixFromNow();

  @override
  suffixTimeValue(bool isPast) => isPast ? suffixAgo() : suffixFromNow();
}

/// [Portuguese-Brazil] Interface for short language
class PtBrShortLocale implements LocaleMessagesInterface {
  @override
  String lessThanOneMinute() => 'agora';

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
  List<String> months() => ['mês', 'messes'];

  @override
  List<String> years() => ['ano', 'anos'];

  @override
  prefixTimeValue(bool isPast) => isPast ? prefixAgo() : prefixFromNow();

  @override
  suffixTimeValue(bool isPast) => isPast ? suffixAgo() : suffixFromNow();
}

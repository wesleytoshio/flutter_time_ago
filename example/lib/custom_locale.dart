import 'package:flutter_time_ago/flutter_time_ago.dart';

class CustomLocale implements LocaleMessagesInterface {
  @override
  String lessThanOneMinute() => 'maintenant';

  @override
  String prefixAgo() => 'il y a';

  @override
  String prefixFromNow() => "d'ici";

  @override
  String suffixAgo() => '';

  @override
  String suffixFromNow() => '';

  @override
  List<String> minutes() => ['minute', 'minutes'];

  @override
  List<String> hours() => ['heure', 'heures'];

  @override
  List<String> days() => ['jour', 'jours'];

  @override
  List<String> weeks() => ['semaine', 'semaine'];

  @override
  List<String> months() => ['mois', 'mois'];

  @override
  List<String> years() => ['an', 'ans'];
}

class CustomShortLocale implements LocaleMessagesInterface {
  @override
  String lessThanOneMinute() => 'mt';

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
  List<String> hours() => ['hr', 'hrs'];

  @override
  List<String> days() => ['j', 'js'];

  @override
  List<String> weeks() => ['s', 's'];

  @override
  List<String> months() => ['mo', 'mo'];

  @override
  List<String> years() => ['an', 'ans'];
}

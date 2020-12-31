/// [LocaleMessagesInterface] Interface for language
abstract class LocaleMessagesInterface {
  String lessThanOneMinute();

  String prefixAgo();

  String prefixFromNow();

  String suffixAgo();

  String suffixFromNow();

  List<String> minutes();

  List<String> hours();

  List<String> weeks();

  List<String> days();

  List<String> months();

  List<String> years();
}

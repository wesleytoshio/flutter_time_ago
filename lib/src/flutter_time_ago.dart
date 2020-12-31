import 'locales/en.dart';
import 'locales/es.dart';
import 'locales/locale_messages_interface.dart';
import 'locales/pt_br.dart';

/// A FlutterTimeAgo.
class FlutterTimeAgo {
  static bool _prefixEnabled = true;
  static bool _suffixEnabled = true;
  static String _default = 'pt_BR';

  static Map<String, LocaleMessagesInterface> _localesMessageMap = {
    'pt_BR': PtBrLocale(),
    'pt_BR_short': PtBrShortLocale(),
    'es': EsLocale(),
    'es_short': EsShortLocale(),
    'en': EnLocale(),
    'en_short': EnShortLocale(),
  };

  /// Set the language of messages ex: [há 5 minutos].
  ///
  /// the default language is [pt_BR].
  ///
  /// if prefixEnabled is set to false the message `prefixAgo()` and `suffixAgo()` will not be displayed
  ///
  /// if suffixEnabled is set to false the message `prefixAgo()` and `suffixAgo()` will not be displayed
  static setConfig(String locale,
      {bool prefixEnabled = true, bool suffixEnabled = true}) {
    _default = locale;
    _prefixEnabled = prefixEnabled;
    _suffixEnabled = suffixEnabled;
  }

  static setCustomLocale(
          Map<String, LocaleMessagesInterface> customLocaleMessage) =>
      _localesMessageMap.addEntries(customLocaleMessage.entries);

  /// if the value is in milliseconds ex: [1605985200000]
  ///
  /// the runtimeType must be an [int]
  static String parse(date,
      {String lang, bool prefixEnabled, bool suffixEnabled}) {
    DateTime now = DateTime.now();

    return _timeTextByValue(
      _parseByRuntimeType(date).difference(now).inSeconds,
      lang: lang,
      prefixEnabled: prefixEnabled,
      suffixEnabled: suffixEnabled,
    );
  }

  /// switch of runtimeType giving the possibility
  /// to accept [formattedString] and [milliseconds].
  static DateTime _parseByRuntimeType(date) {
    switch (date.runtimeType) {
      case String:
        return DateTime.parse(date);
        break;
      case int:
        return DateTime.fromMillisecondsSinceEpoch(date);
        break;
      default:
        return date;
    }
  }

  static String _timeTextByValue(seconds,
      {String lang, bool prefixEnabled, bool suffixEnabled}) {
    int position = (seconds < 0) ? 2 : 1;
    String _lang = lang != null ? lang : _default;
    bool __prefixEnabled =
        prefixEnabled != null ? prefixEnabled : _prefixEnabled;
    bool __suffixEnabled =
        suffixEnabled != null ? suffixEnabled : _suffixEnabled;
    List<Object> _time =
        timeFormats(_lang).firstWhere((element) => seconds.abs() < element[0]);
    return _displayTimeByValue(seconds.abs(), _time, position == 2, _lang,
        __prefixEnabled, __suffixEnabled);
  }

  static String _displayTimeByValue(int seconds, dynamic time, bool isPast,
      String lang, bool prefixEnabled, bool suffixEnabled) {
    try {
      var _localeMessage = _localesMessageMap[lang];
      if (seconds < 60) return _localeMessage.lessThanOneMinute();
      int _timeValue = (seconds / time[2]).round();
      int _displayIndex = _timeValue > 1 ? 1 : 0;

      String _prefixText =
          prefixEnabled ? _prefixTimeValue(isPast, _localeMessage) : '';
      String _suffixText =
          suffixEnabled ? _suffixTimeValue(isPast, _localeMessage) : '';
      return _displayText(
          _prefixText, _timeValue, time[1][_displayIndex], _suffixText);
    } catch (e) {
      print(e);
      return e;
    }
  }

  static String _displayText(prefix, timeValue, timeName, suffix) {
    var wordSeparator =
        (timeName.toString().length > 1) ? ' $timeName' : '$timeName';
    return '$prefix $timeValue$wordSeparator $suffix';
  }

  static List<List<Object>> timeFormats(locale) {
    return [
      [60, _localesMessageMap[locale].lessThanOneMinute(), 1],
      [3600, _localesMessageMap[locale].minutes(), 60],
      [86400, _localesMessageMap[locale].hours(), 3600],
      [604800, _localesMessageMap[locale].days(), 86400],
      [2.419e+6, _localesMessageMap[locale].weeks(), 604800],
      [29030400, _localesMessageMap[locale].months(), 2419200],
      [2903040000, _localesMessageMap[locale].years(), 29030400],
    ];
  }

  /// returns a [prefix] function according to time [past] or [Future]
  static _prefixTimeValue(bool isPast, LocaleMessagesInterface localeMessage) =>
      isPast ? localeMessage.prefixAgo() : localeMessage.prefixFromNow();

  /// returns a [prefix] function according to time [past] or [Future]
  static _suffixTimeValue(bool isPast, LocaleMessagesInterface localeMessage) =>
      isPast ? localeMessage.suffixAgo() : localeMessage.suffixFromNow();
}

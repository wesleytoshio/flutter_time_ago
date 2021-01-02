# flutter_time_ago

A new Flutter package to format date or milliseconds in seconds ago, minutes ago, hours ago, days ago and from now.

## Usage

Format any `DateTime` or `milliseconds` format by following steps:

```dart
import 'package:flutter_time_ago/flutter_time_ago.dart';

var _dateTime = DateTime.now().subtract(Duration(seconds: 300));
print(FlutterTimeAgo.parse(_dateTime)); // 5 minutes ago
print(FlutterTimeAgo.parse(1605985200000, lang:'pt_BR')); // há 1 mês
```

### Formatting from fromMilliseconds

if you have a date in milliseconds and the type is String, you need to convert it to int ex: int.parse('1605985200000'):

```dart
import 'package:flutter_time_ago/flutter_time_ago.dart';

int milliseconds = int.parse('1605985200000');
print(FlutterTimeAgo.parse(milliseconds)); // 1 month ago
```

### Setting default locale

If you want to change default `lang`, then call `setConfig` method into a function.\
Languages available so far: pt_BR', 'pt_BR_short', 'en', 'en_short', 'es', 'es_short'

```dart
import 'package:flutter_time_ago/flutter_time_ago.dart';

@override
  void initState() {
    super.initState();
     FlutterTimeAgo.setConfig(
     'pt_BR',
     /// Remove a prefix text ex: [in] 2 minutes
     /// Default is [true]
     prefixEnabled:false,
     /// Remove a suffix text ex: 2 minutes [ago]
     /// Default is [true]
     suffixEnabled:false,
     );
  }
```

### Your language is not supported?

if your language is not supported, you can create your own, just create a class that implements LocaleMessagesInterface

```dart
import 'package:flutter_time_ago/flutter_time_ago.dart';

class CustomLocale implements LocaleMessagesInterface {...}
```

### how to you set custom language?

```dart
@override
  void initState() {
    super.initState();
     FlutterTimeAgo.setCustomLocale(
        {'fr': CustomLocale(), 'fr_short': CustomShortLocale()}
        );
  }
```

### Using FlutterTimeAgoWidget

A widget that rebuilds itself every 1 minute in periods to update the time on the screen

```dart
@override
 Widget build(BuildContext context) {
 return FlutterTimeAgoWidget(
        date: 1605985200000,
        /// Remove a prefix text ex: [in] 2 minutes
        /// Default is [true]
        prefixEnabled:false,
        /// Remove a suffix text ex: 2 minutes [ago]
        /// Default is [true]
        suffixEnabled:false,
        textAlign: TextAlign.center,
        textStyle: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w600,
          ),
        );
 }
```

don't forget to look at our example application in the /example folder\
just run the `flutter run` command inside it

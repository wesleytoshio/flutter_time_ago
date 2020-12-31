import 'package:flutter/widgets.dart';
import 'package:timer_builder/timer_builder.dart';

import '../../flutter_time_ago.dart';

class FlutterTimeAgoWidget extends StatelessWidget {
  final dynamic date;
  final String lang;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxLines;
  final bool suffixEnabled;
  final bool prefixEnabled;
  const FlutterTimeAgoWidget(
      {Key key,
      @required this.date,
      this.textStyle,
      this.textAlign,
      this.overflow,
      this.maxLines,
      this.lang,
      this.suffixEnabled,
      this.prefixEnabled})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(Duration(minutes: 1), builder: (context) {
      return Text(
        FlutterTimeAgo.parse(date,
            lang: lang,
            prefixEnabled: prefixEnabled,
            suffixEnabled: suffixEnabled),
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        style: textStyle,
      );
    });
  }
}

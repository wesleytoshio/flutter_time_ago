import 'package:flutter/widgets.dart';
import 'package:timer_builder/timer_builder.dart';

import '../../flutter_time_ago.dart';

class FlutterTimeAgoWidget extends StatelessWidget {
  final dynamic date;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxLines;
  const FlutterTimeAgoWidget(
      {Key key,
      @required this.date,
      this.textStyle,
      this.textAlign,
      this.overflow,
      this.maxLines})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(Duration(minutes: 1), builder: (context) {
      return Text(
        FlutterTimeAgo.parse(date),
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        style: textStyle,
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_time_ago/flutter_time_ago.dart';

class TestPage extends StatefulWidget {
  final List<dynamic> items;

  const TestPage({Key key, this.items}) : super(key: key);
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: widget.items.length,
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => Center(
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: FlutterTimeAgoWidget(
                date: widget.items[index],
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

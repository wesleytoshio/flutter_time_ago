import 'package:flutter/material.dart';
import 'package:flutter_time_ago/flutter_time_ago.dart';

import 'page/test_page.dart';

void main() {
  FlutterTimeAgo.setConfig('pt_BR');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimeAgo Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String selectedLang = 'pt_BR';
  List<dynamic> times;
  List<String> localesList = [
    'pt_BR',
    'pt_BR_short',
    'en',
    'en_short',
    'es',
    'es_short',
  ];

  @override
  void initState() {
    DateTime now = DateTime.now();
    times = [
      now,
      now.subtract(
        Duration(minutes: 25),
      ),
      now.subtract(
        Duration(hours: 3),
      ),
      now.subtract(
        Duration(days: 2),
      ),
      now.subtract(
        Duration(days: 8),
      ),
      now.subtract(
        Duration(days: 40),
      ),
      now.subtract(
        Duration(days: 365),
      ),
      now,
      now.add(
        Duration(minutes: 25),
      ),
      now.add(
        Duration(hours: 3),
      ),
      now.add(
        Duration(days: 2),
      ),
      now.add(
        Duration(days: 8),
      ),
      now.add(
        Duration(days: 40),
      ),
      now.add(
        Duration(days: 365),
      ),
      1609302107000,
      1609298507000,
      1608034642938,
      1605985200000
    ];
    super.initState();
  }

  List<dynamic> get _timesToString => times
      .map((time) => time.runtimeType == DateTime ? time.toString() : time)
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.grey[400],
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: localesList
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(5),
                          child: ActionChip(
                            onPressed: () {
                              FlutterTimeAgo.setConfig(
                                e,
                                prefixEnabled: false,
                                suffixEnabled: true,
                              );
                              setState(() {
                                selectedLang = e;
                              });
                            },
                            backgroundColor: identical(e, selectedLang)
                                ? Colors.blue
                                : Colors.grey[300],
                            labelStyle: TextStyle(
                              color: identical(e, selectedLang)
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            label: Text(e),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                child: Text(
                  'EXEMPLOS',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: _timesToString.length,
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: FlutterTimeAgoWidget(
                      date: _timesToString[index],
                      textAlign: TextAlign.center,
                      textStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

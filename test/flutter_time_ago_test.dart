import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_time_ago/src/flutter_time_ago.dart';

final now = new DateTime.now();

void main() {
  group('[FlutterTimeAgo] pt_BR', () {
    test('agora', () async {
      final clock = now;
      var result = FlutterTimeAgo.parse(clock.toString(), lang: 'en');
      print('result $result');
      expect(result, equals('agora'));
    });

    test('há 5 minutos', () async {
      final clock = now.subtract(Duration(seconds: 300));
      var result = FlutterTimeAgo.parse(clock.toString());
      expect(result.trimRight(), equals('há 5 minutos'));
    });

    test('há 1 hora', () async {
      final clock = now.subtract(Duration(hours: 1));
      var result = FlutterTimeAgo.parse(clock.toString());
      expect(result.trimRight(), equals('há 1 hora'));
    });

    test('há 2 dias', () async {
      final clock = now.subtract(Duration(days: 2));
      var result = FlutterTimeAgo.parse(clock.toString());
      expect(result.trimRight(), equals('há 2 dias'));
    });

    test('há 1 semana', () async {
      final clock = now.subtract(Duration(days: 7));
      var result = FlutterTimeAgo.parse(clock.toString());
      expect(result.trimRight(), equals('há 1 semana'));
    });

    test('há 1 mês', () async {
      final clock = now.subtract(Duration(days: 30));
      var result = FlutterTimeAgo.parse(clock.toString());
      expect(result.trimRight(), equals('há 1 mês'));
    });

    test('há 2 anos', () async {
      final clock = now.subtract(Duration(days: 600));
      var result = FlutterTimeAgo.parse(clock.toString());
      expect(result.trimRight(), equals('há 2 anos'));
    });
  });
}

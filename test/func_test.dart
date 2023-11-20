import 'package:test/test.dart';

import '../bin/test.dart/f1.dart';

late int a;
late int b;
void main() {
  group('Арифметические функции', () {
    setUp(() {
      a = 3;
      b = 7;
    });
    tearDown(
      () {},
    );
    test('Проверка сложения', () {
      expect(add(a, b), equals(a + b));
    });
    test('Проверка сложения2', () {
      expect(
        add(a, b),
        equals(a + b),
      );
    });
    test('Проверка сложения3', () {
      expect(
        add(a, b),
        equals(a + b),
      );
    });
    test('Проверка умножения', () {
      expect(mul(a, b), equals(a * b));
    });
    test('Проверка умножения2', () {
      expect(mul(a, b), equals(a * b));
    });
    test('Проверка умножения3', () {
      expect(mul(a, b), equals(a * b));
    });
    test('Проверка отложенного умножения', () async {
      var value = await Future.value(mul(a, b));
      expect(value, equals(a * b));
    });
  });

  group('Функции для работы со строками', () {
    test('Удаление окружающих пробелов', () {
      var line = ' oO ';
      expect(deleteSurroundingSpaces(line), equals('oO'));
    });
    test('Перевод в нижний регистр', () {
      var line = 'ПроВерка';
      expect(stringToLowerCase(line), equals('проверка'));
    });
  });
}

import 'package:dart_valid_email/dart_valid_email.dart';
import 'package:test/test.dart';

void main() {
  group('Email Address Validator Tests', () {
    test('Valid email address', () {
      expect(() => validateEmailAddress('test@example.com'), returnsNormally);
    });

    test('Invalid email address throws InvalidEmailException', () {
      expect(() => validateEmailAddress('testexample.com'),
          throwsA(isA<InvalidEmailException>()));
    });

    test('Email address without domain throws InvalidEmailException', () {
      expect(() => validateEmailAddress('test@'),
          throwsA(isA<InvalidEmailException>()));
    });

    test('Empty email address throws InvalidEmailException', () {
      expect(() => validateEmailAddress(''),
          throwsA(isA<InvalidEmailException>()));
    });
  });
}

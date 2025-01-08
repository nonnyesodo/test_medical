import 'package:flutter_test/flutter_test.dart';
import 'package:medical_app/core/utils/extension.dart';

void main() {
  group('Email validation', () {
    test('Empty email', () {
      String email = '';
      expect(email.validateEmail(), 'Email required');
    });

    test('Invalid email', () {
      String email = 'invalid-email';
      expect(email.validateEmail(), 'email invalid');
    });

    test('Valid email', () {
      String email = 'test@example.com';
      expect(email.validateEmail(), null);
    });

    test('Email with special characters', () {
      String email = 'test+special@example.com';
      expect(email.validateEmail(), null);
    });

    test('Email with numbers', () {
      String email = 'test123@example.com';
      expect(email.validateEmail(), null);
    });
  });
}

import 'package:hider/hider.dart';
import 'package:test/test.dart';

void main() {
  group('Hider', () {
    test('should return null if input is null', () {
      expect(Hider.mask(null), null);
    });

    test('should return empty String if input is empty', () {
      expect(Hider.mask(''), '');
    });

    test('should mask string of length less than 25', () {
      expect(Hider.mask('HelloWorld'), 'Hello*****');
    });

    test('should mask string of length greater than 25', () {
      expect(Hider.mask('ThisIsALongStringToBeMasked'),
          'ThisIsALon*******ToBeMasked');
    });

    test('should handle string of exactly 25 characters', () {
      expect(
          Hider.mask('Exactly25CharactersLong12'), 'Exactly25Char************');
    });
  });
}

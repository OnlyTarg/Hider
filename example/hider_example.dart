import 'package:hider/hider.dart';

void main() {
  String longString = "SensitiveInformation1234567890";
  final maskedLongString = Hider.mask(longString);
  print(maskedLongString);

  String shortString = "ShortSensitiveInformation";
  final maskedShortString = Hider.mask(shortString);
  print(maskedShortString);
}

/// The `Hider` class provides a static method, `mask`, for masking sensitive information within a given string.

/// This method takes a string `str` as input and returns a masked version of the string to hide sensitive information.

/// If the length of the input string is 25 characters or less, the method replaces the second half of the string with asterisks,
/// keeping the first half unchanged. If the string is longer than 25 characters, it replaces the middle 15 characters with asterisks,
/// keeping the first and last 10 characters unchanged.

/// Examples:
///
/// Example 1: When the string length is greater than 25 characters
/// ```dart
/// String longString = "SensitiveInformation1234567890";
/// final maskedLongString = Hider.mask(longString);
/// print(maskedLongString);
/// Output: SensitiveInformat*******890
/// ```

/// Example 2: When the string length is less than or equal to 25 characters
/// ```dart
/// String shortString = "ShortSensitiveInformation";
/// final maskedShortString = Hider.mask(shortString);
/// print(maskedShortString);
///  Output: ShortInfo

abstract class Hider {
  static String? mask(
    String? str,
  ) {
    if (str == null) return null;

    if (str.length <= 25) {
      int halfLength = (str.length / 2).ceil();

      String firstHalf = str.substring(0, halfLength);
      String secondHalf =
          str.substring(halfLength).replaceAll(RegExp(r'.'), '*');

      return [firstHalf, secondHalf].join();
    }

    String firstPart = str.substring(0, 10);
    const middlePart = '*******';
    String lastPart = str.substring(str.length - 10);

    return [firstPart, middlePart, lastPart].join();
  }
}

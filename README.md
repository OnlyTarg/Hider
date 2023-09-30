
# The Hider 

```bash
The package provides a simple and effective way to mask sensitive information within strings. Whether you're handling passwords, API keys, or any other confidential data, this package helps protect that information by replacing characters with asterisks.
```

## Features

```bash
Dynamic Masking: Adjusts masking based on the length of the input string.
Easy Integration: Seamless integration into your Dart and Flutter projects.
```

## Getting started

```bash
To get started, simply import the Hider class and use the mask method:
```

```Dart
void main() {
  String sensitiveData = "YourSensitiveDataHere";
  String maskedString = Hider.mask(sensitiveData);
  print(maskedString);
}
```


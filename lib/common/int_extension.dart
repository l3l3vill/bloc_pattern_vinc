import 'dart:math';

class IntExtension {

  int randomNumInt(int maxValue) {
    final int maxValue = 100;
    return Random().nextInt(maxValue);
  }

  int randomNumIntBetweenTwoValues(int minValue, int maxValue) {
    final Random randomValue = Random();
    int randomNumber = randomValue.nextInt(maxValue) + minValue;
    return randomNumber;
  }

  /// Create and print random integers
  void createRandomIntegers(int maxValue) {
    final random = Random();
    for (var i = 0; i < 5; i++) {
      print(random.nextInt(maxValue));
    }
  }
}
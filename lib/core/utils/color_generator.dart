import 'dart:math';
import 'dart:ui';

/// This class responsible for random color generation
class ColorGenerator {
  ///Randomly generates on of 16777216 unique colors
  static Color getRandomColor() {
    const alpha = 255;

    final Random random = Random();
    final int red = random.nextInt(256);
    final int green = random.nextInt(256);
    final int blue = random.nextInt(256);

    return Color.fromARGB(alpha, red, green, blue);
  }
}

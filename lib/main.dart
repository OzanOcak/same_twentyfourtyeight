import 'package:flutter/material.dart';

const Color lightBrown = Color.fromARGB(255, 205, 193, 180);
const Color darkBrown = Color.fromARGB(255, 187, 173, 160);
const Color orange = Color.fromARGB(255, 245, 149, 99);
const Color tan = Color.fromARGB(255, 238, 228, 218);
const Color numColor = Color.fromARGB(255, 119, 110, 101);
const Color greyText = Color.fromARGB(255, 119, 110, 101);

const Map<int, Color> numTileColor = {
  2: tan,
  4: tan,
  8: Color.fromARGB(255, 242, 177, 121),
  16: Color.fromARGB(255, 245, 149, 99),
  32: Color.fromARGB(255, 246, 124, 95),
  64: const Color.fromARGB(255, 246, 95, 64),
  128: const Color.fromARGB(255, 235, 208, 117),
  256: const Color.fromARGB(255, 237, 203, 103),
  512: const Color.fromARGB(255, 236, 201, 85),
  1024: const Color.fromARGB(255, 229, 194, 90),
  2048: const Color.fromARGB(255, 232, 192, 70),
};

void main() => runApp(MyApp());

class Tile {
  final int x;
  final int y;
  int val;

  Animation<double> animatedX;
  Animation<double> animatedY;
  Animation<int> animatedVal;
  Animation<double> scale; // to exyend tiles

  Tile(this.x, this.y, this.val) {
    resetAnimations();
  }

  void resetAnimations() {
    animatedX = AlwaysStoppedAnimation(this.x.toDouble());
    animatedY = AlwaysStoppedAnimation(this.y.toDouble());
    animatedVal = AlwaysStoppedAnimation(this.x);
    scale = AlwaysStoppedAnimation(1.0);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'twentyfortyeight',
      home: TwentyFortyEight(),
    );
  }
}

class TwentyFortyEight extends StatefulWidget {
  @override
  _TwentyFortyEightState createState() => _TwentyFortyEightState();
}

class _TwentyFortyEightState extends State<TwentyFortyEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

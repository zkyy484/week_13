import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.indigo,
  ];

  Stream<Color> getColor() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index =  t % colors.length;
        return colors[index];
      }
    );
  }
}
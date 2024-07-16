import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

Animate simpleAnimation() {
  return Animate(
    effects: const [
      FadeEffect(
        duration: Duration(seconds: 3),
      ),
    ],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/tilwhite.png",
          width: 100,
          height: 100,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text('Hello World'),
      ],
    ),
  ).fadeIn(duration: const Duration(seconds: 3));
}

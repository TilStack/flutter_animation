import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

Animate effetAnimation() {
  return Animate(
    effects: [
      FadeEffect(duration: 1000.ms, curve: Curves.easeInOut),
      ScaleEffect(
          duration: 1000.ms,
          begin: const Offset(0.5, 0.5),
          end: const Offset(1.0, 1.0)),
      RotateEffect(duration: 1000.ms, begin: 0.0, end: 360.0),
    ],
    child: const Text('Hello my World'),
  );
}

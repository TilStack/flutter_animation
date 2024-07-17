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

Animate customAnimation() {
  return Animate(
    child: const Text(
      'Love My Custom Animation',
      style: TextStyle(fontSize: 18),
    ),
  ).animate().custom(
        duration: const Duration(seconds: 1), //durée de l'animation
        begin: 0, // Quittant du début
        end: 1, // Allant à la fin
        curve: Curves.easeInOut,
        builder: ((context, value, child) {
          //Context sert à obtenir des informations sur le widget parent, Value est la valeur de l'animation, Child est le widget à animer
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              child,
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 50 * value,
              ),
            ],
          );
        }),
      );
}

Animate repeatAnimation() {
  return Animate(
    child: const Text('TilStack repeat my animation'),
  )
      .animate(
        onPlay: (controller) => controller.repeat(),
      )
      .scaleXY(
        duration: const Duration(seconds: 2),
      );
}

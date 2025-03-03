import 'package:flutter/material.dart';
import 'package:flutter_animation/personelAnimation.dart';
import 'simpleAnimation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Animation Demo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              repeatAnimation(),
              const SizedBox(
                height: 5,
              ),
              simpleAnimation(),
              const SizedBox(
                height: 5,
              ),
              effetAnimation()
            ],
          ),
        ),
      ),
    );
  }
}

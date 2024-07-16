import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
          child: Animate(
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
          )).fadeIn(
            duration: const Duration(seconds: 3),
          ),
        ),
      ),
    );
  }
}

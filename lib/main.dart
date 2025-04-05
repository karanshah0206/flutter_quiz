import 'package:flutter/material.dart';

import 'package:flutter_quiz/intro_page.dart';

void main() {
  runApp(const FlutterQuizApp());
}

class FlutterQuizApp extends StatelessWidget {
  const FlutterQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 53, 27, 99),
                Color.fromARGB(255, 83, 42, 154),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const IntroPage(),
        ),
      ),
    );
  }
}

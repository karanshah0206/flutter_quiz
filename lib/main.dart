import 'package:flutter/material.dart';

import 'package:flutter_quiz/intro_page.dart';
import 'package:flutter_quiz/questions_page.dart';

void main() {
  runApp(const FlutterQuizApp());
}

class FlutterQuizApp extends StatefulWidget {
  const FlutterQuizApp({super.key});

  @override
  State<FlutterQuizApp> createState() {
    return _FlutterQuizState();
  }
}

class _FlutterQuizState extends State<FlutterQuizApp> {
  bool _isQuizOn = false;

  void nextPage() {
    setState(() {
      _isQuizOn = !_isQuizOn;
    });
  }

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
          child: _isQuizOn ? const QuestionsPage() : IntroPage(nextPage),
        ),
      ),
    );
  }
}

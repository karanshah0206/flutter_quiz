import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';

import 'package:flutter_quiz/intro_page.dart';
import 'package:flutter_quiz/questions_page.dart';
import 'package:flutter_quiz/results_page.dart';

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
  int _pageIndicator = 0; // 0 = home, 1 = quiz, 2 = results
  List<String> selectedAnswers = List<String>.filled(questions.length, '');

  Widget _getPage() {
    if (_pageIndicator == 0) return IntroPage(nextPage);
    if (_pageIndicator == 1) return QuestionsPage(saveAnswer, nextPage);
    return ResultsPage(selectedAnswers, nextPage);
  }

  void nextPage() {
    setState(() {
      _pageIndicator = (_pageIndicator + 1) % 3;
    });
  }

  void saveAnswer(int questionIndex, String selectedAnswer) {
    selectedAnswers[questionIndex] = selectedAnswer;
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
          child: _getPage(),
        ),
      ),
    );
  }
}

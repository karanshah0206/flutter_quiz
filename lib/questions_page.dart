import 'package:flutter/material.dart';

import 'package:flutter_quiz/data/questions.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsPage> {
  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            questions[_questionIndex].questionText,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          ...questions[_questionIndex].answerOptions.map(
            (answerOption) => ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 33, 1, 95),
                foregroundColor: const Color.fromARGB(175, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(answerOption),
            ),
          ),
        ],
      ),
    );
  }
}

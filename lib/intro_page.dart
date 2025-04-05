import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  final void Function() nextPage;

  const IntroPage(this.nextPage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(175, 255, 255, 255),
          ),
          const SizedBox(height: 25),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(195, 255, 255, 255),
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: nextPage,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}

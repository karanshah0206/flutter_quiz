import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 300),
          const SizedBox(height: 25),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          const SizedBox(height: 35),
          OutlinedButton(
            child: const Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}

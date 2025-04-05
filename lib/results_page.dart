import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final List<String> selectedAnswers;
  final void Function() nextPage;

  const ResultsPage(this.selectedAnswers, this.nextPage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Your results',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          OutlinedButton.icon(
            onPressed: nextPage,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Return Home'),
            icon: const Icon(Icons.replay),
          ),
        ],
      ),
    );
  }
}

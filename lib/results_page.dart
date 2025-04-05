import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';

class ResultsPage extends StatelessWidget {
  final List<String> selectedAnswers;
  final void Function() nextPage;

  const ResultsPage(this.selectedAnswers, this.nextPage, {super.key});

  List<Map<String, Object>> getResults() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].questionText,
        'selected_answer': selectedAnswers[i],
        'correct_answer':
            questions[i].answerOptions[questions[i].correctAnswerIndex],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> resultsData = getResults();
    final int questionsCount = questions.length;
    final int correctAnswersCount =
        resultsData.where((result) {
          return result['selected_answer'] == result['correct_answer'];
        }).length;

    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Correctly answered $correctAnswersCount out of $questionsCount',
            style: TextStyle(
              color: Color.fromARGB(200, 255, 255, 255),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 330,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...resultsData.map((summary) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          maxRadius: 14,
                          backgroundColor:
                              summary['selected_answer'] ==
                                      summary['correct_answer']
                                  ? const Color.fromARGB(255, 104, 242, 228)
                                  : const Color.fromARGB(255, 201, 115, 214),
                          child: Text(
                            ((summary['question_index'] as int) + 1).toString(),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                summary['question'].toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 5),
                              Text(
                                summary['selected_answer'] as String,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: const Color.fromARGB(
                                    255,
                                    201,
                                    115,
                                    214,
                                  ),
                                ),
                              ),
                              Text(
                                summary['correct_answer'] as String,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: const Color.fromARGB(
                                    255,
                                    104,
                                    242,
                                    228,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          TextButton.icon(
            onPressed: nextPage,
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Return Home'),
            icon: const Icon(Icons.replay),
          ),
        ],
      ),
    );
  }
}

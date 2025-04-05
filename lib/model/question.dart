class Question {
  final String questionText;
  final List<String> answerOptions;
  final int correctAnswerIndex;

  const Question(
    this.questionText,
    this.answerOptions,
    this.correctAnswerIndex,
  );

  List<String> get shuffledOptions {
    List<String> result = List.of(answerOptions);
    result.shuffle();
    return result;
  }
}

class Question {
  final String questionText;
  final List<String> answerOptions;
  final int correctAnswerIndex;

  const Question(
    this.questionText,
    this.answerOptions,
    this.correctAnswerIndex,
  );
}

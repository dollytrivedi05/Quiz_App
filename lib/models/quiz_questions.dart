class QuizQuestions {
  final String question;
  final List<String> answers;

  const QuizQuestions({required this.question, required this.answers});

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}

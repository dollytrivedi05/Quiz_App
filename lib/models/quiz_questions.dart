class QuizQuestions {
  final String question;
  final List<String> answers;

  const QuizQuestions({required this.question, required this.answers});

  List<String> getshuffledanswers() {
    final shufffedlist = List.of(answers);
    shufffedlist.shuffle();
    return shufffedlist;
  }
}

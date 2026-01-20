class Quizquestions {
  final String question;
  final List<String> answers;

  const Quizquestions(this.question, this.answers);

  List<String> getshuffledanswers() {
    final shufffedlist = List.of(answers);
    shufffedlist.shuffle();
    return shufffedlist;
  }
}

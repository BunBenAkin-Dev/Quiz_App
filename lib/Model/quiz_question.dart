class QuizQuestion {
  final String text;
  final List<String> answers;

  const QuizQuestion(this.text, this.answers);

  List<String> getshuffled() {
    final grtshuffle = List.of(answers);
    grtshuffle.shuffle();
    return grtshuffle;
  }
}

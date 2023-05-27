class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get ShuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList
        .shuffle(); //shuffle affects the list but map doesn't affects the list, shuffle will update the original list
    return shuffledList;
  }
}

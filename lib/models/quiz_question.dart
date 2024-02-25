class QuizQuestion {
  const QuizQuestion(this.text,this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){

    //Burda ana listenin bir kopyasını aldık ana listemiz değişmesin diye.
    //Daha sonra listeyi shuffle methodu sayesinde karıştırdık . 
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
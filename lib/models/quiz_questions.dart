class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  
  final String text;
  final List<String> answers;
  
  List<String>  getShuffledAnswers() {
//this is called 'chaining' – old list is untouched, make a new list to shuffle the questions/answers
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList; 
  }

}
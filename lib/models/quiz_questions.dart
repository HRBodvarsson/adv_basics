class QuizQuestion {
   QuizQuestion(this.text, this.answers);
   //: assert(correctAnswerIndex >= 0 && correctAnswerIndex < answers.length,
     //       'correctAnswerIndex must be within the range of the answers list.');
  
  final String text;
  final List<String> answers;
  //final int correctAnswerIndex;
  
  List<String> get shuffledAnswers {
//this is called 'chaining' – old list is untouched, make a new list to shuffle the questions/answers
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList; 
  }
}
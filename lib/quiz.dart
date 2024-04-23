import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/results_screen.dart';
//import 'package:flutter/widgets.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    debugPrint('Current answers: $selectedAnswers');

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  //  @override
  // Widget build(BuildContext context) {
  //   Widget screenWidget;

  //   switch (activeScreen) {
  //     case 'questions-screen':
  //       screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
  //       break;
  //     case 'results-screen':
  //       // Pass the list of selected answers and the restartQuiz function to ResultsScreen
  //       screenWidget = ResultsScreen(
  //         chosenAnswers: _selectedAnswers,
  //         restartQuiz: restartQuiz,
  //       );
  //       break;
  //     default:
  //       // The default case handles the 'start-screen'
  //       screenWidget = StartScreen(switchScreen);
  //   }
    @override
    Widget build(context) {
      Widget screenWidget = StartScreen(switchScreen);

      if (activeScreen == 'questions-screen') {
        screenWidget = QuestionsScreen(
          onSelectAnswer: chooseAnswer,
        );
      }

      if (activeScreen == 'results-screen') {
        screenWidget = ResultsScreen(
          chosenAnswers: selectedAnswers, 
          onRestart: restartQuiz,
        );
      }
    
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 50, 14, 111),
                Color.fromARGB(255, 81, 42, 147),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
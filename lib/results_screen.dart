import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
   const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  
  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      //loop body - the code that will be repeated until conditions aren't met
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }
  

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    debugPrint('Chosen Answers in ResultsScreen: $chosenAnswers');
    final numCorrectQuestions = summaryData
    .where(
      (data) => data['user_answer'] == data['correct_answer'],
    )
    .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
              Text(
                'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 246, 198, 255),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),  //textStyle: const TextStyle(color: Colors.white,),
            const SizedBox(
              height: 30),
            //icon: Icon(Icons.refresh_sharp)
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(foregroundColor: Colors.white,),
              icon: const Icon(Icons.refresh_sharp),
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

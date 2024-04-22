import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
              'assets/images/quiz-logo.png', 
            width: 300,
            color: const Color.fromARGB(175, 255, 255, 255),
          ),
//best way to use transparency, much stronger than opacity.
          const SizedBox(height: 80),
           Text(
            'Learn Flutter the Fun Way!', 
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 227, 170, 255), 
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          //for button you can go to widget catalog, flutter doc's...
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}



    //must create class for widgets, they are the blueprints for the widget.
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
          const Text(
            'Learn Flutter the Fun Way!', 
            style: TextStyle(
              color: Colors.deepOrange, 
              fontSize: 24
            ),
          ),
          const SizedBox(height: 30),
          //for button you can go to widget catalog, flutter doc's...
          OutlinedButton.icon(
            onPressed: () {
              
            }, 
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
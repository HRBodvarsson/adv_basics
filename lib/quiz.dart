import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  
    @override
    State<Quiz> createState() {
      return _QuizState();
  }
}


class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
            colors: [
              Color.fromARGB (255, 50, 14, 111),
              Color.fromARGB (255, 81, 42, 147),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const StartScreen()),
      ),
    );
  }
}
/* 

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

  @override
  Widget build(context) {
    return container(
       decoration: const BoxDecoration(gradient: LinearGradient(
            colors: [
              Color.fromARGB (255, 50, 14, 111),
              Color.fromARGB (255, 81, 42, 147),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
       ),       
      ),
    );
  }
 */


    


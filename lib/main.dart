import 'package:flutter/material.dart';

void runApp() {
    
       MaterialApp(
        home: Scaffold(
          body: Image.asset('quiz-logo.png'),
        ),
      );
}

      @override
      Widget build(BuildContext context) {
        return MaterialApp(
         title: 'Flutter Demo',
          theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //useMaterial3: true,
        ),
        //home: Scaffold(
       // body: Image.asset(name) Image.asset('quiz-logo.png'),
      //)
    );
  }
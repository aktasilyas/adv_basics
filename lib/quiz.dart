import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions-screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var  activeScreen = '';
  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = 'start-screen';
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'start-screen';
      });
      selectedAnswers = [];
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 53, 17, 115), Colors.deepPurple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: activeScreen == 'start-screen' ?   StartScreen(switchScreen) : QuestionsScreen(onSelectedAnswer: chooseAnswer),
      ),
    ));
  }
}

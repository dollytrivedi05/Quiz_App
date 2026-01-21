import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizScreen> {
  String activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  List<String> selectedAnswers = [];
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(chooseAnswer: selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 170, 97, 192),
                const Color.fromARGB(255, 119, 4, 165),
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

import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestions(
    question: 'Which language is used to write Flutter apps?',
    answers: ['Dart', 'Java', 'Kotlin', 'Swift'],
  ),
  QuizQuestions(
    question: 'Which widget shows text on the screen?',
    answers: ['Text', 'Row', 'Column', 'Container'],
  ),
  QuizQuestions(
    question:
        'Which method is called only once when a StatefulWidget is created?',
    answers: ['initState', 'build', 'dispose', 'setState'],
  ),
  QuizQuestions(
    question: 'Which widget is used for arranging children vertically?',
    answers: ['Column', 'Row', 'Stack', 'Container'],
  ),
  QuizQuestions(
    question: 'What does runApp() do?',
    answers: [
      'Run the app',
      'Create a widget',
      'Start the main function',
      'Build the UI',
    ],
  ),
];

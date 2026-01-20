import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  Quizquestions('Which language is used to write Flutter apps?', [
    'Dart',
    'Java',
    'Kotlin',
    'Swift',
  ]),
  Quizquestions('Which widget shows text on the screen?', [
    'Text',
    'Row',
    'Column',
    'Container',
  ]),
  Quizquestions(
    'Which method is called only once when a StatefulWidget is created?',
    ['initState', 'build', 'dispose', 'setState'],
  ),
  Quizquestions('Which widget is used for arranging children vertically?', [
    'Column',
    'Row',
    'Stack',
    'Container',
  ]),
  Quizquestions('What does runApp() do?', [
    'Run the app',
    'Create a widget',
    'Start the main function',
    'Build the UI',
  ]),
];

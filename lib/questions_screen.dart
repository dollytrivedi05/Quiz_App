import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void changeQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentquestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentquestion.question,
              style: GoogleFonts.tinos(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            ...currentquestion.getshuffledanswers().map((answer) {
              return AnswerButton(
                ansText: answer,
                onTap: () {
                  changeQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}

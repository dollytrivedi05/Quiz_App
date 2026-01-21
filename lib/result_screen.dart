import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chooseAnswer});
  final List<String> chooseAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswer.length; i++) {
      summary.add({
        'question_number': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_asnwer': chooseAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You aanswered X out Y questions correclty ! "),
            SizedBox(height: 30),
            QuestionsSummary(getSummaryData()),
            SizedBox(height: 30),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white, width: 2),
              ),
              onPressed: () {},
              child: Text(
                "Restart Quiz!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chooseAnswer,
    required this.onRestart,
  });
  final List<String> chooseAnswer;
  final void Function() onRestart;
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
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctQuestions = summaryData
        .where((data) => data['user_asnwer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $correctQuestions out $totalQuestions questions correclty ! ",
              style: GoogleFonts.tinos(
                color: const Color.fromARGB(255, 176, 19, 204),
                fontSize: 20,
                fontWeight: .bold,
              ),
            ),
            SizedBox(height: 30),
            QuestionsSummary(summaryData),

            SizedBox(height: 30),
            TextButton.icon(
              style: TextButton.styleFrom(
                side: BorderSide(color: Colors.white, width: 2),
              ),
              onPressed: onRestart,
              icon: Icon(Icons.refresh),
              label: Text(
                "Restart Quiz!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 144, 32, 189),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

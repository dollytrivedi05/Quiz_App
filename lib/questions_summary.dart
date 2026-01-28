import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(summaryData.length, (index) {
        final data = summaryData[index];

        return Row(
          crossAxisAlignment: .start,
          children: [
            Text(((data['questionNumber'] as int) + 1).toString()),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(data['question'] as String),
                  const SizedBox(height: 5),
                  Text(data['userAnswer'] as String),
                  Text(data['correctAnswer'] as String),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

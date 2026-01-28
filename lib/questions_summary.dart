import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final data in summaryData)
          Row(
            children: [
              Text(((data['questionNumber'] as int) + 1).toString()),
              Column(
                children: [
                  Text(data['question'] as String),
                  SizedBox(height: 5),
                  Text(data['userAnswer'] as String),
                  Text(data['correctAnswer'] as String),
                ],
              ),
            ],
          ),
      ],
    );
  }
}

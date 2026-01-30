import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: .center,
      decoration: BoxDecoration(borderRadius: .circular(200)),
      height: 300,
      width: 300,
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(summaryData.length, (index) {
            final data = summaryData[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                crossAxisAlignment: .start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: .center,
                    decoration: BoxDecoration(
                      color: data['userAnswer'] == data['correctAnswer']
                          ? const Color.fromARGB(255, 17, 126, 71)
                          : Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      ((data['questionNumber'] as int) + 1).toString(),
                      style: const TextStyle(
                        fontWeight: .bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.tinos(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: .bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Your answer: ${data['userAnswer']}',
                          style: GoogleFonts.tinos(
                            color: const Color.fromARGB(255, 189, 16, 16),
                            fontSize: 14,
                            fontWeight: .bold,
                          ),
                        ),
                        Text(
                          'Correct answer: ${data['correctAnswer']}',
                          style: GoogleFonts.tinos(
                            color: const Color.fromARGB(255, 15, 121, 85),
                            fontSize: 14,
                            fontWeight: .bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

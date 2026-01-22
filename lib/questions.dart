import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Question1..',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 30),
          AnswerButton(text: 'answer1', onTap: () {}),
          AnswerButton(text: 'answer2', onTap: () {}),
          AnswerButton(text: 'answer3', onTap: () {}),
          AnswerButton(text: 'answer4', onTap: () {}),
        ],
      ),
    );
  }
}

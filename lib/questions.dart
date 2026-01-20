import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
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
          AnswerButton(ansText: 'answer1', onTap: () {}),
          AnswerButton(ansText: 'answer2', onTap: () {}),
          AnswerButton(ansText: 'answer3', onTap: () {}),
          AnswerButton(ansText: 'answer4', onTap: () {}),
        ],
      ),
    );
  }
}

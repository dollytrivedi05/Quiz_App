import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz, {super.key});
  final void Function() startquiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // into column we set multiple widgets so we add children , column is for widget above eachother
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300, //add color to image toset opacity of image.
            color: const Color.fromARGB(110, 255, 255, 255),
          ),
          SizedBox(height: 80),
          Text(
            "Learn Flutter with Fun!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              startquiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: BorderSide(color: Colors.white, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              // overlayColor: Colors.green.withValues(10),
            ),
            icon: Icon(Icons.arrow_right_alt, size: 30),

            label: Text(
              "Start Quiz",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback reset;

  const Result({super.key, required this.finalScore, required this.reset});

  String get resultPhrase {
    var resultText = 'You did it!';
    if (finalScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (finalScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (finalScore <= 16) {
      resultText = 'You are ... strange!';
    } else {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: reset,
            child: Text('Reset Quiz!'),
          )
        ],
      ),
    );
  }
}

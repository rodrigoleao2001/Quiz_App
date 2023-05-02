import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback function;
  final String answerText;
  const Answer(this.function, {super.key, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: function,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

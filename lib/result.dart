import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Result extends StatelessWidget {
  final VoidCallback function;
  final String text;
  final int score;

  Result(this.function, this.text, this.score);

  String get resultPhrase {
    var resultText = 'Your score is: ';
    if (score <= 10) {
      resultText = 'Congrats!';
    } else {
      resultText = 'Too bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question('Finished!'),
        Answer(function, text),
        Text(resultPhrase)
      ],
    );
  }
}

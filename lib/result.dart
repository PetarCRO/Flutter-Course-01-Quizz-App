import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Result extends StatelessWidget {
  final VoidCallback function;
  final String text;

  Result(this.function, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question('Finished!'),
        Answer(function, text),
      ],
    );
  }
}

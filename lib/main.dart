import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(QuizzApp());

class QuizzApp extends StatefulWidget {
  @override
  State<QuizzApp> createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  var _questions = ['Question 1', 'Question 2', 'Question 3', 'Question 4'];
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < _questions.length - 1)
        _questionIndex++;
      else
        _questionIndex = 0;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quizz App'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(children: [
          Question(_questions[_questionIndex]),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Answer A'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Answer B'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Answer C'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Answer D'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
          ),
        ]),
      ),
    );
  }
}

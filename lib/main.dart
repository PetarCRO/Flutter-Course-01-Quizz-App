import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(QuizzApp());

class QuizzApp extends StatefulWidget {
  @override
  State<QuizzApp> createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  final _questions = [
    {
      'questionText': "What's your favourite color?",
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': "What's your favourite food?",
      'answers': ['Biscuits', 'Tomatoes', 'Pasta', 'Hamburger'],
    },
    {
      'questionText': "What's your favourite car?",
      'answers': ['BMW', 'Renault', 'Toyota', 'Mercedes'],
    },
    {
      'questionText': "What's your favourite phone?",
      'answers': ['Oppo', 'Huawei', 'iPhone', 'Samsung'],
    },
  ];
  int _questionIndex = 0;

  void _restart() {
    setState(() {
      _questionIndex = 0;
    });
  }

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
        body: _questionIndex < _questions.length - 1
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_restart, 'Restart the game'),
      ),
    );
  }
}

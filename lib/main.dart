import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(QuizzApp());

class QuizzApp extends StatefulWidget {
  @override
  State<QuizzApp> createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  int _totalScore = 0;
  final _questions = [
    {
      'questionText': "What's your favourite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    /*{
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
    },*/
  ];
  int _questionIndex = 0;

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
            : Result(_restart, 'Restart the game', _totalScore),
      ),
    );
  }
}

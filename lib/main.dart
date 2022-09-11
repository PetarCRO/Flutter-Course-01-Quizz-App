import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(QuizzApp());

class QuizzApp extends StatefulWidget {
  @override
  State<QuizzApp> createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  var _questions = [
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
          Question(
            (_questions[_questionIndex]['questionText'] as String),
          ),
          ...(_questions[_questionIndex]['answers'] as List<String>).map(
            (answer) {
              return Answer(_answerQuestion, answer);
            },
          ).toList()
        ]),
      ),
    );
  }
}

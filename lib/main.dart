import 'package:flutter/material.dart';

void main() => runApp(QuizzApp());

class QuizzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = ['Question 1', 'Question 2', 'Question 3'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quizz App'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(children: [
          Text('this is a question'),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer A'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer B'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer C'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
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

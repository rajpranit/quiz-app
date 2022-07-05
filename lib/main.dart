import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

import './answer.dart';
import './question.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
      print(_questionIndex);
    });
  }

  final _questions = const [
    {
      'question': 'What is your favourite color?',
      'answers': ['White', 'black', 'Green', 'Blue']
    },
    {
      'question': 'What is your favourite Animal?',
      'answers': ['Goose', 'Deer', 'lion', 'Tiger']
    },
    {
      'question': 'What is your favourite Place to visit?',
      'answers': ['Gym', 'Gym', 'Home', 'Home']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(233, 30, 192, 30),
          title: Text(
            "QUIZ TIME",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 254, 254),
            ),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(),
      ),
    );
  }
}

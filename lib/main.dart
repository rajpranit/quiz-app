import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

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

  var questions = [
    {
      'question': 'What is your favourite color?',
      'answers': ['White', 'black', 'Green', 'Blue']
    },
    {
      'question': 'What is your favourite ANIMAL?',
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
        appBar: AppBar(
          title: Text("QUIZ TIME"),
        ),
        body: Column(
          children: [
              Question(questions[_questionIndex]["question"]),
              ...(questions[_questionIndex]['answers'] as List).map((answer) {
                return Answer(_answerQuestion,answer);
              })
          ],
        ),
      ),
    );
  }
}

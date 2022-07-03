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

  final questions = const [
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]["question"] as String),
                  ...(questions[_questionIndex]['answers'] as List)
                      .map((answer) => Answer(_answerQuestion, answer))
                ],
              )
            : Center(
                child: Text(
                  "You did it!",
                  style: TextStyle(
                      fontSize: 18,
                      height:
                          2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                      color: Colors.redAccent, //font color
                      backgroundColor: Colors.black12, //background color
                      letterSpacing: 5, //letter spacing
                      decoration: TextDecoration.underline, //make underline
                      decorationStyle:
                          TextDecorationStyle.double, //double underline
                      decorationColor:
                          Colors.brown, //text decoration 'underline' color
                      decorationThickness:
                          1.5, //decoration 'underline' thickness
                      fontStyle: FontStyle.italic),
                ),
              ),
      ),
    );
  }
}

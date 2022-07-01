import 'package:flutter/material.dart';
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
    'What is your favourite color?',
    'what\'s your favourite ANIMAL? '
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("QUIZ TIME"),
          ),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.indigoAccent)),
                child: Text("Answer 1"),
                onPressed: _answerQuestion,
              ),
              ElevatedButton(
                child: Text("Answer 2"),
                onPressed: () => {print("Answer")},
              ),
              ElevatedButton(
                child: Text("Answer 3"),
                onPressed: _answerQuestion,
              )
            ],
          )),
    );
  }
}

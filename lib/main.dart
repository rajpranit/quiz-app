import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion(){
    setState( () {
       questionIndex += 1;
       print(questionIndex);
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
              Text(questions[questionIndex]),
              ElevatedButton(
                child: Text("Answer 1"),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text("Answer 2"),
                onPressed: () => {print("Answer")},
              ),
              ElevatedButton(
                child: Text("Answer 3"),
                onPressed: answerQuestion,
              )
            ],
          )),
    );
  }
}

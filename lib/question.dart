import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({Key key}) : super(key: key);
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(28),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(
          color: Color.fromARGB(197, 180, 64, 165),
          fontSize: 20,

        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

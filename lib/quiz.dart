import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

// ignore: must_be_immutable
class Quiz extends StatelessWidget {

  final Function answerQuestion;
  int questionIndex;
  final List<Map<String , Object>> questions;

  Quiz(this.answerQuestion , this.questions ,this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Question(questions[questionIndex]["question"] as String),
                  ...(questions[questionIndex]['answers'] as List)
                      .map((answer) => Answer(answerQuestion, answer),)
                ],
              );
  }
}
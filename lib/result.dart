import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;

  Result(this.totalScore);

  String get resultPharase {
    var resultText;

    if (totalScore <= 8) {
      resultText = 'You are awesome and innocnet';
    } else if (totalScore <= 12) {
      resultText = 'You are likeable';
    } else if (totalScore <= 18) {
      resultText = 'You are ... Strange';
    } else {
      resultText = 'You are horrible';
    }
    ;

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPharase,
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontFamily: 'Open Sans',
              fontSize: 40,
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text("Restart"),
          )
        ],
      ),
    );
  }
}

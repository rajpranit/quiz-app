import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler , this.answer);

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Color.fromARGB(255, 0, 150, 250),
        hoverColor: Colors.white,
        child: Text(answer),
        onPressed: selectHandler,
      ),
    ));
  }
}

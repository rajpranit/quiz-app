import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: 150,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(150, 0, 233, 241)),
          foregroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 255, 255, 255)),
          overlayColor:
              MaterialStateProperty.all(Color.fromARGB(255, 55, 182, 55)),
          shadowColor:
              MaterialStateProperty.all(Color.fromARGB(100, 42, 106, 158)),
          elevation: MaterialStateProperty.all(15),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        child: Text(
          answer,
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        onPressed: selectHandler,
      ),
    ));
  }
}

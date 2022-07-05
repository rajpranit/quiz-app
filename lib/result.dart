import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
              );
  }
}
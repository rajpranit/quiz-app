import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(""),
          ),
          body: Column(
            children: <Widget>[
              Text("The Question !"),
              ElevatedButton(
                child: Text("Answer 1"),
                onPressed: null,
              ),
              ElevatedButton(
                child: Text("Answer 2"),
                onPressed: null,
              ),
              ElevatedButton(
                child: Text("Answer 3"),
                onPressed: null,
              )
            ],
          )),
    );
  }
}

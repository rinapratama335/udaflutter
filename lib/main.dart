import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateless Widget',
      home: new Scaffold(
        body: new Container(
          color: Colors.blueAccent,
          child: new Container(
            color: Colors.lightGreen,
            margin: new EdgeInsets.all(50.0),
          ),
        ),
      ),
    );
  }
}
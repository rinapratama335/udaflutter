import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        alignment: Alignment.center,
        children: <Widget>[
          new Card(
            color: Colors.red,
            child: new Padding(padding: const EdgeInsets.all(250.0)),
          ),
          new Card(
            color: Colors.yellow,
            child: new Padding(padding: const EdgeInsets.all(200.0)),
          ),
          new Card(
            color: Colors.green,
            child: new Padding(padding: const EdgeInsets.all(150.0)),
          ),
          new Card(
            color: Colors.blue,
            child: new Padding(padding: const EdgeInsets.all(100.0)),
          ),
          new Card(
            color: Colors.black,
            child: new Padding(padding: const EdgeInsets.all(50.0)),
          ),
        ],
      ),
    );
  }
}

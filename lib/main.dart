import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool sbool = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switch Widget',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Switch Widget'),
          backgroundColor: Colors.green,
        ),
        body: new Center(
          child: new Switch(
              value: sbool,
              onChanged: (bool sb) {
                setState(() {
                  sbool = sb;
                  print(sbool);
                });
              }
          ),
        ),
      ),
    );
  }
}

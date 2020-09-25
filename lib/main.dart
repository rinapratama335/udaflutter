import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Input Text Widget',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('TextField Widget')
        ),
        body: new Column(
          children: <Widget>[
            new TextField(
              onChanged: (String txt) {
                setState(() {
                  text = txt;
                });
              },
              decoration: new InputDecoration(hintText: 'Input Username.......'),
            ),
            new Text(text)
          ],
        ),
      )
    );
  }
}

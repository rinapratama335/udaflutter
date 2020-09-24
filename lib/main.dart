import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Dummy Application',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('List Widget'),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: Text('List item 1'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: Text('List item 2'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: Text('List item 3'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: Text('List item 4'),
              trailing: new Icon(Icons.arrow_forward),
            ),
          ],
        ),
      )
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// AppBar
/*
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: new Text('Appbar Widget'),
        titleSpacing: 80.0,
        elevation: 35.0,
        toolbarOpacity: 0.5,
      ),
    );
  }
}
*/

// AppBar dengan Leading Action
class _MyAppState extends State<MyApp> {
  String txt = 'Halo';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: new Text('AppBar Widget'),
        leading: new Icon(Icons.menu),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.access_time),
              onPressed: () => {txt = 'This is Arrow Button'}
              ),
          new IconButton(
              icon: new Icon(Icons.data_usage),
              onPressed: () => {txt = 'This is Data Button'}
          )
        ],
      ),
      body: new Center(
        child: new Text(txt),
      ),
    );
  }
}

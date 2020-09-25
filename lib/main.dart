import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String textButton = "";

  void method1(value) {
    setState(() {
      textButton = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Button Widget',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Button widget'),
          backgroundColor: Colors.pink,
        ),
        body: new Column(
          children: <Widget>[
            new RaisedButton(
              onPressed: (){
                method1('You pressed button');
              }, child: new Text('Klik Button'),
            ),
            new FlatButton(
                onPressed: null, child: new Text('The Flat Button')
            ),
            new Text(textButton)
          ],
        ),
      ),
    );
  }
}

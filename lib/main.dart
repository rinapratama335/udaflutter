import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double drag = 1.0;

  void method1(value) {
    setState(() {
      drag = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Slider Widget',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Slider Widget'),
          backgroundColor: Colors.lightBlue,
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Slider(
                  value: drag,
                  min: 1.0,
                  max: 10.0,
                  onChanged: (double val) {
                    method1(val);
                  }
              ),
              new Text('value: $drag'),
            ],
          ),
        ),
      ),
    );
  }
}

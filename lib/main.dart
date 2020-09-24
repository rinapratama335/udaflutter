import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> item = new List();

  @override
  void initState() {
    for(int i = 0; i < 30; i++) {
      item.add(i);
    }

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Dummy App Array List',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('List Arrat Widget'),
        ),
        body: new ListView.builder(
          itemCount: item.length,
          itemBuilder: (BuildContext context, int index) {
            return new ListTile(
              title: new Text('Item nomor: $index'),
              trailing: new Icon(Icons.print),
            );
          },
        ),
      ),
    );
  }
}

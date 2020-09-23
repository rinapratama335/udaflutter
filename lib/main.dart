import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //inisialisasi string
  String txt = '';
  
  @override
  void initState() {
    //declare stirng yang ditampilklan di awal sebelum button diklik
    txt = 'Klik Tombol Ini';
    super.initState();
  }
  
  void changeTxt() {
    setState(() {
      //declare stirng yang ditampilklan di awal setelah button diklik
      txt = "Tombol Sudah Diklik";
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateful Widget',
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(
            onPressed: (){changeTxt();},
            child: new Text(txt),
          ),
        ),
      ),
    );
  }
}

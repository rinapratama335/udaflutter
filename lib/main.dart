import 'package:flutter/material.dart';
import 'halamanlain.dart';

void main() {
  runApp(new MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigasi Drawer'),
        backgroundColor: Colors.green,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text('Irwanto'),
                accountEmail: Text('irwanto@yahoo.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: new Text('P'),
                ),
                decoration: new BoxDecoration(
                  color: Colors.lightBlue,
                ),
                otherAccountsPictures: <Widget>[
                  new CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: new Text('Y'),
                  ),
                  new CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: new Text('W'),
                  )
                ]
            ),
            new ListTile(
              title: new Text('Home Page'),
              trailing: new Icon(Icons.home),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contex) => new pagebaru('Welcome to Home Page'))),
            ),
            new ListTile(
              title: new Text('List Laptop'),
              trailing: new Icon(Icons.laptop),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new pagebaru('Welcome to List Product'))),
            ),
            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(Icons.close),
              onTap: (){Navigator.pop(context);},
            ),
          ],
        ),
      ),
    );
  }
}

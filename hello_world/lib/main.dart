import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'My Flutter App', debugShowCheckedModeBanner: false, home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Geeks Rank',
            style: TextStyle(fontFamily: 'Pacifico', fontSize: 30),
          ),
          backgroundColor: Colors.pink[600],
        ),
        body: Container(
          child: Text(
            'Hello World',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          color: Colors.red[500],
          height: 200.0,
          width: 200.0,
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.all(50),
          transform: Matrix4.rotationZ(0.2),
        ));
  }
}

class MySTLHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

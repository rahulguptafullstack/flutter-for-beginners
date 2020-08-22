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
        body: Center(
          child: Icon(Icons.add_circle, size: 60, color: Colors.red),
        ));
  }
}

class MySTLHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[600]),
              child: Text('Hello',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[600]),
              child: Text('World',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[600]),
              child: Text('Geeks',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            )
          ],
        ));
  }
}

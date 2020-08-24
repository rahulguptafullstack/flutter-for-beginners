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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.end,
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[600]),
              child: Text('1',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[600]),
              child: Text('2',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[600]),
              child: Text('3',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[600]),
              child: Text('4',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[600]),
              child: Text('5',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[600]),
              child: Text('6',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
          ],
        ));
  }
}

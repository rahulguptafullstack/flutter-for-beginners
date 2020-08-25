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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.yellow[600]),
                child: Text('1',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.green[600]),
                child: Text('2',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.pink[600]),
                child: Text('3',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ));
  }
}

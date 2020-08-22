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
      body: Image.asset(
        'assets/images/4.jpg',
        height: 600,
        fit: BoxFit.cover,
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () => {
          print('You clicked me '),
        },
        tooltip: 'Click button',
        backgroundColor: Colors.pink[600],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 40,
          child: Center(
            child: Text(
              'Bottom Bar',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Pacifico', fontSize: 20),
            ),
          ),
        ),
        color: Colors.pink[600],
      ),
    );
  }
}

class MySTLHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int counter = 0;
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
        child: Text('$counter'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () => {
          setState(() {
            counter += 1;
          })
        },
        tooltip: 'Click button',
        backgroundColor: Colors.pink[600],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 40,
          child: Center(
            child: Text(
              'Bottom Bar',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Pacifico', fontSize: 20),
            ),
          ),
        ),
        color: Colors.pink[600],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'My Flutter App',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Geeks Rank',
          style: TextStyle(fontFamily: 'Pacifico', fontSize: 30),
        ),
        backgroundColor: Colors.pink[600],
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(fontFamily: 'Pacifico', fontSize: 40),
        ),
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
    )));

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'My Flutter App',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Geeks Rank'),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () => {
          print('You clicked me '),
        },
        tooltip: 'Click button',
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 40,
          child: Text('Bottom Bar'),
        ),
      ),
    )));

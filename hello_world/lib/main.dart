import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'My Flutter App',
      home: Text.rich(TextSpan(text: 'Welcome to', // default text style,
          children: <TextSpan>[
            TextSpan(
                text: 'Geeks Rank',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 70.0)),
            TextSpan(text: 'Youtube Channel', style: TextStyle(fontSize: 20.0))
          ])),
      debugShowCheckedModeBanner: false,
    ));

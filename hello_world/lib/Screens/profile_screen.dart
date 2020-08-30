import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Map userData = {};
  @override
  Widget build(BuildContext context) {
    userData = ModalRoute.of(context).settings.arguments;
    print(userData);
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text(
          userData['name'],
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}

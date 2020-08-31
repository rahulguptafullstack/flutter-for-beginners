import 'package:flutter/material.dart';
import 'package:hello_world/Screens/home_screen.dart';
import 'package:hello_world/Screens/notification_screen.dart';
import 'package:hello_world/Screens/profile_screen.dart';

void main() => runApp(MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/profile': (context) => Profile(),
        '/notification': (context) => NotificationScreen(),
      },
    ));

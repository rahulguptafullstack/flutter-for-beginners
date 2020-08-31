import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.call_missed),
                text: 'Missed Call',
              ),
              Tab(
                icon: Icon(Icons.call_received),
                text: 'Received Call',
              ),
              Tab(
                icon: Icon(Icons.call_made),
                text: 'Dial Call',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
                child: Text(
              'Missed Call Here',
              style: TextStyle(fontSize: 25.0),
            )),
            Center(
                child: Text('Received Call Here',
                    style: TextStyle(fontSize: 25.0))),
            Center(
                child:
                    Text('Dial Call Here', style: TextStyle(fontSize: 25.0))),
          ],
        ),
      ),
    );
  }
}

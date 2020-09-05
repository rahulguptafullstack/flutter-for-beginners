import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List _notifications =
      List<String>.generate(5000, (index) => 'Notification $index');
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Notifications'),
          ),
          body: ListView.builder(
            itemCount: _notifications.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text(
                    _notifications[index],
                    style: TextStyle(fontSize: 20.0),
                  ),
                  trailing: Icon(Icons.delete),
                ),
              );
            },
          )),
    );
  }
}

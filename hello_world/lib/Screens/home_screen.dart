import 'package:flutter/material.dart';
import 'package:hello_world/Screens/profile_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedItem = 0;

  void _onTapItem(int index) {
    setState(() {
      _selectedItem = index;
    });
    if (index == 4) {
      //Navigator.pushNamed(context, '/profile');

      // Navigator.pushReplacementNamed(context, '/profile',
      //     arguments: {'name': 'Rahul Gupta', 'email': 'rahul@test.com'});

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Profile(),
              settings: RouteSettings(arguments: {
                'name': 'Rahul Gupta',
                'email': 'rahul@test.com'
              })));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/notification');
            },
            icon: Icon(Icons.add_alert),
          )
        ],
      ),
      body: Center(
        child: Text(
          'Current Index - $_selectedItem',
          style: TextStyle(fontSize: 25),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle), title: Text('Add')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Favorite')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text('Profile')),
        ],
        currentIndex: _selectedItem,
        onTap: _onTapItem,
        selectedFontSize: 20,
        selectedItemColor: Colors.red,
      ),
    );
  }
}

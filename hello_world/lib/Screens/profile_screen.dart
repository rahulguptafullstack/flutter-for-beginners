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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter First Name',
                      labelText: 'First Name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Last Name',
                      labelText: 'Last Name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Email',
                      labelText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Mobile',
                      labelText: 'Mobile',
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60.0,
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Text(
                      'UPDATE',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    color: Colors.blue[500],
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

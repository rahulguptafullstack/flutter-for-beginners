import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Map userData = {};
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    userData = ModalRoute.of(context).settings.arguments;
    print(userData);
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
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
                        errorStyle: TextStyle(fontSize: 17.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)))),
                    // validator: (value) {
                    //   if (value.isEmpty) {
                    //     return "Please enter first name";
                    //   } else if (value.length < 5) {
                    //     return "Please enter atleast 5 characters";
                    //   }
                    //   return null;
                    // },

                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Please enter first name'),
                      MinLengthValidator(5,
                          errorText:
                              'First name should be atleast 5 characters')
                    ]),
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
                        errorStyle: TextStyle(fontSize: 17.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)))),
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Please enter last name'),
                      MinLengthValidator(5,
                          errorText: 'Last name should be atleast 5 characters')
                    ]),
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
                        errorStyle: TextStyle(fontSize: 17.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)))),
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Please enter email'),
                      EmailValidator(errorText: 'Please enter a valid email')
                    ]),
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
                        errorStyle: TextStyle(fontSize: 17.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)))),
                    validator: MultiValidator([
                      RequiredValidator(
                          errorText: 'Please enter mobile number'),
                      PatternValidator(r'(^[0,9]{10}$)',
                          errorText: 'Please enter valid mobile number')
                    ]),
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
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          print('Form submitted');
                        }
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

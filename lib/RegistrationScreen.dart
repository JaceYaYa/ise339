import 'package:flutter/material.dart';
import 'package:layout/Services/AuthenticationService.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _key = GlobalKey<FormState>();

  final AuthenticationService _auth = AuthenticationService();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.lightBlueAccent,
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(40),
                  width: width * 0.75,
                  height: height * 0.35,
                  child: Image.asset(
                    'assets/images/1200px-Stony_Brook_U_logo_vertical.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Name cannot be empty';
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            )),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Email cannot be empty';
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white)),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password cannot be empty';
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white)),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            child: Text('Sign Up'),
                            onPressed: () {
                              if (_key.currentState.validate()) {
                                createUser();
                              }
                            },
                            color: Colors.white,
                          ),
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void createUser() async {
    dynamic result = await _auth.createNewUser(
        _nameController.text, _emailController.text, _passwordController.text);
    if (result == null) {
      print('Email is not valid');
    } else {
      print(result.toString());
      _nameController.clear();
      _passwordController.clear();
      _emailController.clear();
      Navigator.pop(context);
    }
  }
}

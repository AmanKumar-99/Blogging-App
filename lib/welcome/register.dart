import 'package:blog_app/welcome/alert.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/constants.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _name = TextEditingController();
  final _password2 = TextEditingController();

  bool _validName = false;
  bool _validEmail = false;
  bool _validPassword = false;
  bool _validConfirmPass = false;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _password2.dispose();
    _name.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: backgroundImage(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Image.asset('images/B.png', height: 250),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(color: Colors.cyanAccent),
                  controller: _name,
                  autofocus: true,
                  decoration: inputField(
                      hint: 'Enter your name',
                      label: 'Name',
                      valid: _validName),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  style: TextStyle(color: Colors.cyanAccent),
                  controller: _email,
                  decoration: inputField(
                      hint: 'Enter your email',
                      label: 'Email',
                      valid: _validEmail),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.cyanAccent),
                  controller: _password,
                  decoration: inputField(
                      hint: 'Enter the password',
                      label: 'Password',
                      valid: _validPassword),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.cyanAccent),
                  controller: _password2,
                  decoration: inputField(
                      hint: 'Enter the password',
                      label: 'Confirm Password',
                      valid: _validConfirmPass),
                ),
              ),
              SizedBox(height: 45),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                onPressed: () {
                  setState(
                    () {
                      _email.text.isEmpty
                          ? _validEmail = true
                          : _validEmail = false;
                      _password.text.isEmpty
                          ? _validPassword = true
                          : _validPassword = false;
                      _name.text.isEmpty
                          ? _validName = true
                          : _validName = false;
                      _password2.text.isEmpty
                          ? _validConfirmPass = true
                          : _validConfirmPass = false;

                      if (isEmail(email: _email.text)) {
                        showAlertDialog(
                          context: context,
                          exitButton: Text('OK'),
                          head: Text('Email not valid'),
                          content: Text(
                              'The email which you have entered is not valid email'),
                        );
                      }

                      if (_password.text != _password2.text) {
                        // Checks the password and confirm password are equal
                        showAlertDialog(
                          context: context,
                          exitButton: Text('OK'),
                          head: Text('Password Mismatched'),
                          content: Text(
                              'The password and its confirmation are not matching'),
                        );
                      }
                    },
                  );
                },
                color: Colors.deepOrangeAccent[700],
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

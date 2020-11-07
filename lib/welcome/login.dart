import 'package:blog_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:blog_app/welcome/alert.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _validEmail = false;
  bool _validPassword = false;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
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
                  controller: _email,
                  autofocus: true,
                  style: TextStyle(color: Colors.cyanAccent),
                  cursorColor: Colors.limeAccent,
                  decoration: inputField(
                      label: 'Email',
                      hint: 'Enter your email',
                      valid: _validEmail),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: _password,
                  obscureText: true,
                  style: TextStyle(color: Colors.cyanAccent),
                  cursorColor: Colors.limeAccent,
                  decoration: inputField(
                      label: 'Password',
                      hint: 'Enter your Password',
                      valid: _validPassword),
                ),
              ),
              SizedBox(height: 30),
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

                      if (isEmail(email: _email.text)) {
                        showAlertDialog(
                          context: context,
                          exitButton: Text('OK'),
                          head: Text('Email not valid'),
                          content: Text(
                              'The email which you have entered is not valid email'),
                        );
                      } else {
                        // Here you can moved to further if all details are correct
                        Navigator.pushNamed(context, '/home');
                      }
                    },
                  );
                },
                color: Colors.deepOrangeAccent[700],
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: () {
                      // Forgotten password
                    },
                    child: Text(
                      'Forgotten Password',
                      style: TextStyle(
                        color: Colors.lime,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: RaisedButton(
                      color: Color(0xFF3E78E5),
                      onPressed: () {
                        //Enter the operations
                      },
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.facebookSquare,
                            color: Colors.white),
                        title: Text(
                          'Login with facebook',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: RaisedButton(
                      color: Colors.deepOrange[600],
                      onPressed: () {
                        //Enter the operations
                      },
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.googlePlusG,
                            color: Colors.white),
                        title: Text(
                          'Login with google',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:blog_app/constants.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundImage(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            welcomeScreen(name: 'Blogging'),
            welcomeScreen(name: 'App'),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/first');
                  },
                  child: welcomeScreenButton(name: 'Login'),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: welcomeScreenButton(name: 'Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

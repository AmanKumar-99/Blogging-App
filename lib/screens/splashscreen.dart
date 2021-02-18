import 'package:bloggingapp/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new HomePage(),
      title: new Text(
        'BloggingApp',
        textScaleFactor: 2,
        style: TextStyle(fontFamily: 'ComicNeue'),
      ),
      image: Image.asset("images/B.png"),
      loadingText: Text(
        "Loading",
        style: TextStyle(fontFamily: 'ComicNeue'),
      ),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}

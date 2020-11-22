import 'dart:async';
import 'package:bloggingapp/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';



class Splash2 extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return SplashScreen(
	seconds: 6,
	navigateAfterSeconds: new HomePage(),
	title: new Text('BloggingApp',textScaleFactor: 2,),
  image: Image.asset("images/B.png"),
	loadingText: Text("Loading"),
	photoSize: 100.0,
	loaderColor: Colors.blue,
	);
}
}

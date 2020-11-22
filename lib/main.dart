import 'package:bloggingapp/screens/about.dart';
import 'package:bloggingapp/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash2(),
    theme: ThemeData(
      primaryColor: Colors.black
    ),
    routes: {
       '/about': (context) => About(),
    },
  ));
}
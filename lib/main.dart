import 'package:flutter/material.dart';
import 'welcome/loading.dart';
import 'package:blog_app/welcome/login.dart';
import 'package:blog_app/welcome/register.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     //to disable rotate mode
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    return MaterialApp(
      title: 'Blogging App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/first': (context) => Login(),
        '/second': (context) => Register(),
      },
    );
  }
}

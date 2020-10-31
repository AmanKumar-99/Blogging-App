import 'package:blog_app/drawer/about.dart';
import 'package:blog_app/drawer/accounts.dart';
import 'package:blog_app/drawer/myblogs.dart';
import 'package:blog_app/view/home.dart';
import 'package:flutter/material.dart';
import 'welcome/loading.dart';
import 'package:blog_app/welcome/login.dart';
import 'package:blog_app/welcome/register.dart';
import 'package:flutter/services.dart';
import 'view/create.dart';
import 'drawer/settings.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

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
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => ThemeData(
        brightness: brightness,
        primarySwatch:
            (brightness == Brightness.dark) ? Colors.lime : Colors.deepPurple,
      ),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'Blogging App',
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          theme:theme,
          //all the paths are described here
          routes: {
            '/': (context) => Loading(),
            '/first': (context) => Login(),
            '/second': (context) => Register(),
            '/home': (context) => HomePage(),
            '/createBlog': (context) => CreateBlog(),
            '/myBlogs': (context) => MyBlogs(),
            '/settings': (context) => Settings(),
            '/about': (context) => About(),
            '/account': (context) => Account(),
          },
        );
      },
    );
  }
}

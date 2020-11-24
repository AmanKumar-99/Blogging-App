import 'package:bloggingapp/screens/about.dart';
import 'package:bloggingapp/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'screens/home.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/services.dart';


void main(){
  runApp(Myapp()
  );
}
class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            '/': (context) => Splash2(),
            '/about': (context) => About(),
            
          },
        );
      },
    );

  }
}

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/L.jpg'),
            fit: BoxFit.cover,
          )),
          child: Column(children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 70),
                child: Text(
                  'Blog - App',
                  style: TextStyle(
                    color: Colors.orange,
                    fontFamily: 'FredokaOne',
                    fontSize: 60,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 35),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(15)),
                  child: FlatButton(
                      child: Text(
                        'Login'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: null),
                ),
                SizedBox(width: 35),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent[400],
                        borderRadius: BorderRadius.circular(15)),
                    child: FlatButton(
                        child: Text(
                          'SignUp'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: null))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
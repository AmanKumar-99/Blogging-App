import 'package:flutter/material.dart';

// Check for email

bool isEmail({String email}) {
  return !RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

// Loading Page Text
Widget welcomeScreen({String name}) {
  return Text(
    name,
    style: TextStyle(
      fontFamily: 'Comic',
      fontSize: 80,
      fontWeight: FontWeight.w900,
      color: Colors.orange[800],
    ),
  );
}

//Set Background Image on Login Screen

Decoration backgroundImage() {
  return BoxDecoration(
    image: DecorationImage(
      image: AssetImage('images/Pattern.jpg'),
      fit: BoxFit.cover,
    ),
  );
}

// Settiing Loading Buttons design

Widget welcomeScreenButton({String name}) {
  return Card(
    child: CircleAvatar(
      backgroundColor: Colors.yellowAccent[700],
      radius: 80,
      child: Text(
        name.toUpperCase(),
        style: TextStyle(
          fontSize: 35,
          fontFamily: 'Comic',
          color: Colors.black,
        ),
      ),
    ),
    elevation: 30,
    shape: CircleBorder(),
  );
}

// Input text field decoration

InputDecoration inputField({String hint, @required String label, bool valid}) {
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(
      color: Colors.green,
    ),
    labelText: label,
    labelStyle: TextStyle(color: Colors.lightGreen),
    errorText: valid ? "$label can't be empty" : null,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.lightGreenAccent[400],
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.yellow[400]),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.orange),
    ),
  );
}

// Get appbar
AppBar getAppBar({List<Widget> actions}) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Blogging',
          style: TextStyle(
            fontFamily: 'Comic',
            color: Colors.cyanAccent,
          ),
        ),
        SizedBox(width: 8),
        Text(
          'App',
          style: TextStyle(
            color: Colors.greenAccent,
            fontFamily: 'Comic',
          ),
        )
      ],
    ),
    actions: actions,
  );
}

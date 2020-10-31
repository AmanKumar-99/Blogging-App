// This page displays my blogs which user has created
import 'package:flutter/material.dart';

class MyBlogs extends StatefulWidget {
  @override
  _MyBlogsState createState() => _MyBlogsState();
}

class _MyBlogsState extends State<MyBlogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('My Blogs'),
      ),
      
    );
  }
}
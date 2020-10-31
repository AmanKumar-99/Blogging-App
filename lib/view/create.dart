import 'package:blog_app/constants.dart';
import 'package:flutter/material.dart';

class CreateBlog extends StatefulWidget {
  @override
  _CreateBlogState createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(
        actions: [
          FlatButton(
            onPressed: () {
              // This is the submit button 
            },
            child: Icon(Icons.file_upload, color: Colors.white),
          ),
        ],
      ),
      body: ListView(
        children: [
          FlatButton(
            onPressed: () {
              // This button is used to take the photo from gallery.
            },
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.yellow[200],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Icon(Icons.add_a_photo),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter title',
                      labelText: 'Title',
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Enter description',
                      labelText: 'Description',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

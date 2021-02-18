import 'package:bloggingapp/models/post.dart';
import 'package:bloggingapp/screens/editPost.dart';
import 'package:flutter/material.dart';
import '../db/PostService.dart';

class PostView extends StatefulWidget {
  final Post post;

  PostView(this.post);

  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.post.title),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                ),
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  PostService postService = PostService(widget.post.toMap());
                  postService.deletePost();
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditPost(widget.post)));
                },
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.post.body),
          ),
        ],
      ),
    );
  }
}

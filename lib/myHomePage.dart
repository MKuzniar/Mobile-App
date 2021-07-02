import 'package:flutter/material.dart';
import './post.dart';
import './postList.dart';
import './textInputWidget.dart';

class MyHomePage extends StatefulWidget {
  String name;

  MyHomePage(this.name);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = [];

  void newPost(String text) {
    this.setState(() {
      posts.add(Post(text, widget.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Material App')),
        body: Column(children: <Widget>[
          Expanded(child: PostList(posts)),
          TextInputWIdget(this.newPost)
        ]));
  }
}

import 'package:flutter/material.dart';
import './post.dart';

class PostList extends StatefulWidget {
  List<Post> listItems;

  PostList(this.listItems);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  void like(Function callback) {
    this.setState(() {
      callback();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.listItems.length,
      itemBuilder: (context, index) {
        var post = widget.listItems[index];
        return Card(
            child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: Text(post.body),
              subtitle: Text(post.author),
            )),
            Row(
              children: <Widget>[
                Container(
                  child: Text(post.likes.toString()),
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                ),
                IconButton(
                    icon: Icon(Icons.thumb_up),
                    onPressed: () => like(post.likePost),
                    color: post.userLikes ? Colors.deepPurple : Colors.grey),
              ],
            )
          ],
        ));
      },
    );
  }
}

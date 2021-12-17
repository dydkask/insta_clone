import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/post.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            CupertinoIcons.camera,
            color: Colors.black,
          ),
        ),
        middle: Text(
          'instagram',
          style: TextStyle(
            fontFamily: 'VeganStyle',
            color: Colors.black87,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(CupertinoIcons.camera),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(CupertinoIcons.camera),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Post(index);
        },
        itemCount: 30,
      ),
    );
  }
}

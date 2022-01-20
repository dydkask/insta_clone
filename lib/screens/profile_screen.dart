import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _appbar(),
              ProfileBody(),
            ],
          ),
        ));
  }

  Row _appbar() {
    return Row(
      children: [
        SizedBox(
          width: 40,
        ),
        Expanded(
          child: Text(
            'test',
            textAlign: TextAlign.center,
          ),
        ),
        IconButton(onPressed: null, icon: Icon(Icons.menu))
      ],
    );
  }
}

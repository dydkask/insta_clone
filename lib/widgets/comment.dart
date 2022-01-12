import 'package:flutter/material.dart';
import 'package:insta_clone/constants/common_size.dart';

import 'my_avatar.dart';

class Comment extends StatelessWidget {

  final String username;
  final String? text;
  final bool showImage;
  final DateTime? dateTime;


  Comment({
    Key? key,
    this.showImage = true, required this.username, required this.text, this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        if(showImage)
          MyAvatar(),
        if(showImage)
          SizedBox(width: common_xxs_gap,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
                text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: username,
                          style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)
                      ),
                      TextSpan(
                        text: '   ',
                      ),
                      TextSpan(
                          text: text,
                          style: TextStyle(color:Colors.black)
                      )
                    ]
                )
            ),
            if(dateTime != null)
              Text(
                '$dateTime',
                style: TextStyle(color:Colors.black,fontSize: 10),
              )
          ],
        )
      ],
    );
  }
}
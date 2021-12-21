import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/constants/common_size.dart';
import 'package:insta_clone/widgets/my_avatar.dart';

import 'my_progress_indicator.dart';

class Post extends StatelessWidget {
  final number;
  Size? size;

  Post(
    this.number, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (size == null) size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _postHeader(),
        _postImage(),
        _postActions(),
        Padding(
          padding: const EdgeInsets.only(left: common_gap),
          child: Text(
            '1200 likes',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Row _postActions() {
    return Row(
      children: [
        IconButton(
          onPressed: null,
          icon: ImageIcon(AssetImage('assets/images/bookmark.png')),
          color: Colors.black87,
        ),
        IconButton(
          onPressed: null,
          icon: ImageIcon(AssetImage('assets/images/comment.png')),
          color: Colors.black87,
        ),
        IconButton(
          onPressed: null,
          icon: ImageIcon(AssetImage('assets/images/direct_message.png')),
          color: Colors.black87,
        ),
        Spacer(),
        IconButton(
          onPressed: null,
          icon: ImageIcon(AssetImage('assets/images/heart_selected.png')),
          color: Colors.black87,
        ),
      ],
    );
  }

  Widget _postHeader() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(common_xxs_gap),
          child: MyAvatar(
            avatarWidth: avatar_size,
            avatarHeight: avatar_size,
            avatarImage: 'https://picsum.photos/100',
          ),
        ),
        Expanded(child: Text('UserName')), // 끝까지 다 채워주는 위젯
        IconButton(
          icon: Icon(Icons.more_horiz),
          color: Colors.red,
          onPressed: null,
        ),
      ],
    );
  }

  CachedNetworkImage _postImage() {
    return CachedNetworkImage(
      imageUrl: 'https://picsum.photos/id/$number/2000/2000',
      placeholder: (BuildContext context, String url) {
        return MyProgressIndicator(
          containerSize: size!.height,
          progressSize: 60.0,
        );
      },
      imageBuilder: (BuildContext context, ImageProvider imageProvider) {
        return AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: imageProvider, fit: BoxFit.scaleDown)),
          ),
        );
      },
    );
  }
}

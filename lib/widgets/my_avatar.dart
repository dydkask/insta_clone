import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  final double? avatarWidth;
  final double? avatarHeight;
  final String? avatarImage;

  const MyAvatar(
      {Key? key, this.avatarWidth, this.avatarHeight, this.avatarImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      // 이미지를 동그랗게 만드는 위젯
      child: CachedNetworkImage(
        imageUrl: avatarImage!,
        width: avatarWidth,
        height: avatarHeight,
      ),
    );
  }
}

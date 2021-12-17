import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

    return CachedNetworkImage(
      imageUrl: 'https://picsum.photos/id/$number/2000/2000',
      placeholder: (BuildContext context, String url) {
        return MyProgressIndicator(containerSize: size!.height,progressSize: 60.0,);
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

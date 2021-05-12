import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:venmus_blog/model/blogPost.dart';

Widget blogWidget(BuildContext context, BlogPost post) {
  return VxBox(
      child: Column(children: [
    Container(
      height: context.screenHeight / 2,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage(post.image),
            fit: BoxFit.cover,
          )),
    ),
    10.heightBox,
    post.previewText.text.size(20).center.make().p12()
  ])).color(Colors.white).shadowSm.rounded.make().px64();
}

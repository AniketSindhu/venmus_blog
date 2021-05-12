import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:venmus_blog/model/blogPost.dart';
import 'package:venmus_blog/widgets/blogWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFE2E2),
      body: Column(children: [
/*         SizedBox(
            height: context.screenHeight / 4.5,
            width: double.infinity,
            child: Image.asset(
              'assets/header.png',
              fit: BoxFit.fill,
            )), */
        10.heightBox,
        "Venmus Blog".text.size(40).black.extraBold.makeCentered(),
        10.heightBox,
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: blogs.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: blogWidget(context, blogs[index]),
                  );
                }).expand(),
            Column(children: [
              12.heightBox,
              ListTile(
                  title: "Facebook".text.make(),
                  tileColor: Colors.white,
                  leading: VxCircle(
                    backgroundColor: Colors.blue,
                    radius: 30,
                  )),
              12.heightBox,
              ListTile(
                  title: "Instragram".text.make(),
                  tileColor: Colors.white,
                  leading: VxCircle(
                    backgroundColor: Colors.pink,
                    radius: 30,
                  )),
              12.heightBox,
              ListTile(
                  title: "Youtube".text.make(),
                  tileColor: Colors.white,
                  leading: VxCircle(
                    backgroundColor: Colors.red,
                    radius: 30,
                  )),
              12.heightBox,
              ListTile(
                  title: "Facebook".text.make(),
                  tileColor: Colors.white,
                  leading: VxCircle(
                    backgroundColor: Colors.blue,
                    radius: 30,
                  )),
              20.heightBox,
              "Recents Blogs"
                  .text
                  .size(20)
                  .underline
                  .medium
                  .make()
                  .objectCenterLeft(),
              15.heightBox,
              VxBox(
                      child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage(blogs[0].image),
                              fit: BoxFit.cover))),
                  blogs[0].previewText.text.make().p8().expand()
                ],
              ))
                  .width(double.infinity)
                  .height(context.screenHeight / 5)
                  .white
                  .shadowSm
                  .rounded
                  .make()
                  .pOnly(right: 16),
              10.heightBox,
              VxBox(
                      child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage(blogs[0].image),
                              fit: BoxFit.cover))),
                  blogs[0].previewText.text.make().p8().expand()
                ],
              ))
                  .width(double.infinity)
                  .height(context.screenHeight / 5)
                  .white
                  .shadowSm
                  .rounded
                  .make()
                  .pOnly(right: 16),
              10.heightBox,
              VxBox(
                      child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage(blogs[0].image),
                              fit: BoxFit.cover))),
                  blogs[0].previewText.text.make().p8().expand()
                ],
              ))
                  .width(double.infinity)
                  .height(context.screenHeight / 5)
                  .white
                  .shadowSm
                  .rounded
                  .make()
                  .pOnly(right: 16),
            ]).w(context.screenWidth / 4)
          ],
        )
      ]).scrollVertical(),
    );
  }
}

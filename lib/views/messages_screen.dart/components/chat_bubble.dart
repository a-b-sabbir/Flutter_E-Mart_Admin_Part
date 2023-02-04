import 'package:e_mart_admin/const/colors.dart';
import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';

Widget chatBubble() {
  return Directionality(
    // textDirection: data['uid'] == currentUser!.uid ? TextDirection.ltr : TextDirection.ltr,
    textDirection: TextDirection.ltr,
    child: Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          // color: data['uid'] == currentUser!.uid ? purple1 : purple2,
          color: purpleColor,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // '${data['msg']}'.text.white.size(16).make(),
          normalText(text: 'Your message here...'),
          10.heightBox,
          // time.text.color(whiteColor.withOpacity(0.5)).make()
          normalText(text: '10:45PM')
        ],
      ),
    ),
  );
}

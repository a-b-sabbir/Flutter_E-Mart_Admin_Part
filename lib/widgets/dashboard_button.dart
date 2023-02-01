import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:e_mart_admin/const/const.dart';

Widget dashboard_button(context, {title, count, icon}) {
  var size = MediaQuery.of(context).size;
  return Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            boldText(text: title, color: white, size: 18.0),
            boldText(text: count, color: white, size: 18.0)
          ],
        ),
      ),
      Image.asset(
        icon,
        width: 40,
        color: white,
      ),
    ],
  )
      .box
      .color(purpleColor)
      .size(size.width * 0.45, 80)
      .rounded
      .padding(EdgeInsets.all(8.0))
      .make();
}

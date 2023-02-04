import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';

Widget orderPlaceDetails({title1, title2, detail1, detail2}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldText(text: title1, color: purpleColor),
                boldText(text: detail1, color: red)
              ],
            ),
            SizedBox(
              width: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldText(text: title2, color: purpleColor),
                  boldText(text: detail2, color: red),

                  // '$title2'.text.bold.size(17).make(),
                  // 5.heightBox,
                  // '$detail2'.text.color(redColor).make(),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

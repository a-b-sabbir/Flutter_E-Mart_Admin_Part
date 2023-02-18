import 'package:e_mart_admin/const/colors.dart';
import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';

Widget productImage({required label, onPress}) {
  return '$label'
      .text
      .bold
      .color(fontGrey)
      .size(16.0)
      .makeCentered()
      .box
      .color(lightGrey)
      .roundedSM
      .size(100, 100)
      .make();
}

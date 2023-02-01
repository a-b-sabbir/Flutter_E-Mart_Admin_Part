import 'package:e_mart_admin/const/const.dart';
import 'package:flutter/material.dart';

Widget normalText({text, color = Colors.white, size = 14.0}) {
  return '$text'.text.color(color).size(size).make();
}

Widget boldText({text, color, size = 14.0}) {
  return '$text'.text.bold.color(color).size(size).make();
}

import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';

Widget ourButton({title, color = Colors.purple, onPress}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(12), backgroundColor: color),
      onPressed: onPress,
      child: normalText(text: title, size: 16.0));
}

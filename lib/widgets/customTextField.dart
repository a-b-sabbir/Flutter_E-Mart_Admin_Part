import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';

Widget customTextField({label, hint, controller, isDesc = false}) {
  return TextFormField(
    style: TextStyle(color: white),
    controller: controller,
    maxLines: isDesc ? 4 : 1,
    decoration: InputDecoration(
      isDense: true,
      label: normalText(text: label),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: white)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: white)),
      hintText: hint,
      hintStyle: TextStyle(color: lightGrey),
    ),
  );
}

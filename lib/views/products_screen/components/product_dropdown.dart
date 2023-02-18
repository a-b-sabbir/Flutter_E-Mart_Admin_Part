import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';

Widget productDropdown() {
  return DropdownButtonHideUnderline(
      child: DropdownButton(
    hint: normalText(text: 'Select Category', color: fontGrey),
    isExpanded: true,
    value: null,
    items: [],
    onChanged: (value) {},
  )).box.roundedSM.white.padding(EdgeInsets.symmetric(horizontal: 8)).make();
}

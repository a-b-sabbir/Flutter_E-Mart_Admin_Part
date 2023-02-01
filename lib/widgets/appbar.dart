import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

import '../const/const.dart';

AppBar appbarWidget({title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: white,
    title: boldText(text: title, size: 20.0, color: fontGrey),
    actions: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: boldText(
            text: intl.DateFormat('EEE, dd/MM/yyyy').format(DateTime.now()),
            color: darkGrey,
            size: 18.0),
      ),
    ],
  );
}

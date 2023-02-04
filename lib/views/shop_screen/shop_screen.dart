import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/widgets/customTextField.dart';
import 'package:flutter/material.dart';

import '../../widgets/text_style.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: purpleColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: boldText(text: 'Shop'),
          actions: [
            TextButton(onPressed: () {}, child: normalText(text: save))
          ],
        ),
        body: Column(
          children: [
            customTextField(label: shopName, hint: nameHint),
            10.heightBox,
            customTextField(label: shopAddress, hint: shopAddressHint),
            10.heightBox,
            customTextField(label: mobile, hint: shopMobileHint),
            10.heightBox,
            customTextField(label: website, hint: shopWebsiteHint),
            10.heightBox,
            customTextField(
                label: description, hint: shopDescHint, isDesc: true),
          ],
        ));
  }
}

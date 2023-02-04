import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/widgets/customTextField.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: editProfile.text.make(),
        actions: [TextButton(onPressed: () {}, child: normalText(text: save))],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(img_product)
                .box
                .clip(Clip.antiAlias)
                .width(150)
                .roundedFull
                .make(),
            10.heightBox,
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: white),
                onPressed: () {},
                child: boldText(text: 'Change Image', color: fontGrey)),
            10.heightBox,
            Divider(color: white),
            10.heightBox,
            customTextField(label: userName, hint: nameHint),
            10.heightBox,
            customTextField(label: password, hint: passHint),
            10.heightBox,
            customTextField(label: confirmPassword, hint: passHint)
          ],
        ),
      ),
    );
  }
}

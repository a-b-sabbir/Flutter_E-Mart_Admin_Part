import 'dart:io';

import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/controller/profile_controller.dart';
import 'package:e_mart_admin/widgets/customTextField.dart';
import 'package:e_mart_admin/widgets/loading_indicator.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditProfileScreen extends StatefulWidget {
  final String? username;
  const EditProfileScreen({super.key, this.username});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  var controller = Get.find<ProfileController>();

  @override
  void initState() {
    controller.nameController.text = widget.username!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: purpleColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: editProfile.text.make(),
          actions: [
            controller.isLoading.value
                ? loadingIndicator(circleColor: white)
                : TextButton(
                    onPressed: () async {
                      controller.isLoading(true);
                      //if image is not selected
                      if (controller.profileImgPath.value.isNotEmpty) {
                        await controller.uploadProfileImg();
                      } else {
                        controller.profileImgLink =
                            controller.snapshotData['imageUrl'];
                      }

                      //if old password matches database
                      if (controller.snapshotData['password'] ==
                          controller.oldpassController.text) {
                        await controller.changeAuthPassword(
                            email: controller.snapshotData['email'],
                            password: controller.oldpassController.text,
                            newpassword: controller.newpassController.text);

                        await controller.updateProfile(
                            imgUrl: controller.profileImgLink,
                            name: controller.nameController.text,
                            password: controller.newpassController.text);
                        VxToast.show(context, msg: 'Updated');
                      } else if (controller
                              .oldpassController.text.isEmptyOrNull &&
                          controller.newpassController.text.isEmptyOrNull) {
                        await controller.updateProfile(
                            imgUrl: controller.profileImgLink,
                            name: controller.nameController.text,
                            password: controller.snapshotData['password']);
                        VxToast.show(context, msg: 'Updated');
                      } else {
                        VxToast.show(context, msg: 'Some error occured');
                        controller.isLoading(false);
                      }
                    },
                    child: normalText(text: save)),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              controller.snapshotData['imageUrl'] == '' &&
                      controller.profileImgPath.isEmpty
                  ? Image.asset(
                      img_product,
                      width: 70,
                      fit: BoxFit.cover,
                    ).box.roundedLg.clip(Clip.antiAlias).make()
                  : controller.snapshotData['imageUrl'] != '' &&
                          controller.profileImgPath.isEmpty
                      ? Image.network(controller.snapshotData['imageUrl'],
                              width: 100, fit: BoxFit.cover)
                          .box
                          .roundedLg
                          .clip(Clip.antiAlias)
                          .make()
                      : Image.file(File(controller.profileImgPath.value),
                              width: 100, fit: BoxFit.cover)
                          .box
                          .roundedLg
                          .clip(Clip.antiAlias)
                          .make(),
              10.heightBox,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: white),
                  onPressed: () {
                    controller.changeImage(context);
                  },
                  child: boldText(text: 'Change Image', color: fontGrey)),
              10.heightBox,
              Divider(color: white),
              10.heightBox,
              customTextField(
                  label: widget.username,
                  hint: nameHint,
                  controller: controller.nameController),
              10.heightBox,
              Align(
                  alignment: Alignment.centerLeft,
                  child: boldText(text: 'Change your Password', color: white)),
              30.heightBox,
              customTextField(
                  label: password,
                  hint: passHint,
                  controller: controller.oldpassController),
              10.heightBox,
              customTextField(
                  label: confirmPassword,
                  hint: passHint,
                  controller: controller.newpassController)
            ],
          ),
        ),
      ),
    );
  }
}

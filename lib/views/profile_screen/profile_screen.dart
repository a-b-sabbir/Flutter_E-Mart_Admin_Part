import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/views/messages_screen.dart/messages_screen.dart';
import 'package:e_mart_admin/views/profile_screen/editProfileScreen.dart';
import 'package:e_mart_admin/views/shop_screen/shop_screen.dart';
import 'package:e_mart_admin/widgets/appbar.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: settings, size: 16.0),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(EditProfileScreen());
              },
              icon: Icon(Icons.edit))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ListTile(
                  leading: Image.asset(img_product)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make(),
                  title: boldText(text: 'Vendor Name', color: white),
                  subtitle: normalText(text: 'vendor@gmail.com'),
                  trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: white),
                      onPressed: () {},
                      child: 'Logout'.text.color(purpleColor).bold.make())),
              Divider(),
              10.heightBox,
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: List.generate(
                      2,
                      (index) => ListTile(
                            onTap: () {
                              switch (index) {
                                case 0:
                                  Get.to(ShopScreen());
                                  break;
                                case 1:
                                  Get.to(MessagesScreen());
                                  break;
                                default:
                              }
                            },
                            leading: Icon(
                              profileButtonsIcons[index],
                              color: white,
                            ),
                            title: boldText(
                                text: profileButtonsTitles[index],
                                color: white),
                          )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

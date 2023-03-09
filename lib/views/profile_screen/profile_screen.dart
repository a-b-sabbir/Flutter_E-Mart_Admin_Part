import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/controller/auth_controller.dart';
import 'package:e_mart_admin/controller/profile_controller.dart';
import 'package:e_mart_admin/services/store_services.dart';
import 'package:e_mart_admin/views/auth_screen/login_screen.dart';
import 'package:e_mart_admin/views/messages_screen.dart/messages_screen.dart';
import 'package:e_mart_admin/views/profile_screen/editProfileScreen.dart';
import 'package:e_mart_admin/views/shop_screen/shop_screen.dart';
import 'package:e_mart_admin/widgets/appbar.dart';
import 'package:e_mart_admin/widgets/loading_indicator.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: settings, size: 16.0),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(EditProfileScreen(
                  username: controller.snapshotData['vendor_name'],
                ));
              },
              icon: Icon(Icons.edit))
        ],
      ),
      body: FutureBuilder(
        future: StoreServices.getProfile(currentUser!.uid),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return loadingIndicator(circleColor: white);
          } else {
            controller.snapshotData = snapshot.data!.docs[0];
            return Column(
              children: [
                ListTile(
                    leading:
                        Image.network('${controller.snapshotData['imageUrl']}')
                            .box
                            .roundedFull
                            .clip(Clip.antiAlias)
                            .make(),
                    title: boldText(
                        text: '${controller.snapshotData['vendor_name']}',
                        color: white),
                    subtitle:
                        normalText(text: '${controller.snapshotData['email']}'),
                    trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: white),
                        onPressed: () async {
                          await Get.find<AuthController>().signout(context);
                          Get.offAll(LoginScreen());
                        },
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
            );
          }
        },
      ),
    );
  }
}

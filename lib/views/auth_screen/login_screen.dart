import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/views/home_screen/home.dart';
import 'package:e_mart_admin/widgets/ourButton.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(12),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              normalText(text: welcome, color: white, size: 30.0),
              20.heightBox,
              Row(
                children: [
                  Image.asset(
                    ic_logo,
                    width: 80,
                    height: 80,
                  )
                      .box
                      .border(color: white)
                      .rounded
                      .padding(EdgeInsets.all(8))
                      .make(),
                  10.widthBox,
                  boldText(text: appname, size: 20.0, color: white),
                  20.heightBox,
                ],
              ),
              40.heightBox,
              normalText(text: loginTo, size: 18.0, color: lightGrey),
              10.heightBox,
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: textfieldGrey,
                        filled: true,
                        hintText: emailHint,
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.email,
                          color: purpleColor,
                        )),
                  ),
                  10.heightBox,
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: textfieldGrey,
                        filled: true,
                        hintText: passHint,
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: purpleColor,
                        )),
                  ),
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: normalText(
                            text: forgotPassword, color: purpleColor)),
                  ),
                  20.heightBox,
                  SizedBox(
                      width: context.screenWidth - 100,
                      child: ourButton(
                          title: login,
                          color: purpleColor,
                          onPress: () {
                            Get.to(() => Home());
                          }))
                ],
              )
                  .box
                  .rounded
                  .outerShadowMd
                  .padding(EdgeInsets.all(8))
                  .white
                  .make(),
              10.heightBox,
              Center(
                child: normalText(text: '$anyProblem', color: lightGrey),
              ),
              Spacer(),
              Center(
                child: boldText(text: '$credit', color: lightGrey),
              )
            ])),
      ),
    );
  }
}

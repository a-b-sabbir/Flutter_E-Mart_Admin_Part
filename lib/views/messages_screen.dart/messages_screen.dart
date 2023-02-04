import 'package:e_mart_admin/const/colors.dart';
import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: messages, size: 20.0, color: fontGrey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
                20,
                (index) => ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundColor: purpleColor,
                      child: Icon(Icons.person),
                    ),
                    title: boldText(text: 'User name'),
                    subtitle:
                        normalText(text: 'Last message ...', color: fontGrey),
                    trailing: normalText(text: '10.34PM', color: fontGrey))),
          ),
        ),
      ),
    );
  }
}

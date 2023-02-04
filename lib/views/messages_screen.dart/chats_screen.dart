import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/views/messages_screen.dart/components/chat_bubble.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back, color: darkGrey),
          ),
          title: boldText(text: chats, color: fontGrey, size: 20.0),
        ),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return chatBubble();
                  },
                )),
                10.heightBox,
                SizedBox(
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Enter message',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: purpleColor)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: purpleColor))),
                      )),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send))
                    ],
                  ),
                ),
              ],
            )));
  }
}

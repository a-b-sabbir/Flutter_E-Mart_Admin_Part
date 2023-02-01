import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import '../../widgets/text_style.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: orders),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: List.generate(
              10,
              (index) => ListTile(
                    onTap: () {},
                    tileColor: textfieldGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    title: boldText(text: '96226592323268', color: purpleColor),
                    subtitle: Column(children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month),
                          7.widthBox,
                          normalText(
                              text: intl.DateFormat('dd-MM-yyyy')
                                  .format(DateTime.now()),
                              color: darkGrey)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.attach_money),
                          7.widthBox,
                          normalText(text: unpaid, color: red)
                        ],
                      ),
                    ]),
                    trailing:
                        boldText(text: '\$500', color: purpleColor, size: 18.0),
                  ).box.margin(EdgeInsets.only(bottom: 4)).make()),
        ),
      ),
    );
  }
}

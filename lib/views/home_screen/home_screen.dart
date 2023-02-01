import 'package:e_mart_admin/widgets/dashboard_button.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:e_mart_admin/const/const.dart';
import 'package:intl/intl.dart' as intl;

import '../../widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(
        title: dashboard,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  dashboard_button(context,
                      title: products, count: 70, icon: ic_products),
                  dashboard_button(context,
                      title: orders, count: 10, icon: ic_orders),
                ],
              ),
              15.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  dashboard_button(context,
                      title: rating, count: 70, icon: ic_star),
                  dashboard_button(context,
                      title: totalSales, count: 10, icon: ic_shop_setting),
                ],
              ),
              10.heightBox,
              Divider(),
              10.heightBox,
              boldText(text: popularProducts, size: 16.0, color: fontGrey),
              20.heightBox,
              ListView(
                shrinkWrap: true,
                children: List.generate(
                    9,
                    (index) => ListTile(
                          onTap: () {},
                          leading: Image.asset(
                            img_product,
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          title:
                              boldText(text: 'Product Title', color: fontGrey),
                          subtitle:
                              normalText(text: 'Good Product', color: darkGrey),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

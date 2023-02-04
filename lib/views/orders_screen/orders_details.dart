import 'package:e_mart_admin/const/colors.dart';
import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/views/orders_screen/components/order_place_details.dart';
import 'package:e_mart_admin/widgets/ourButton.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: darkGrey,
          ),
        ),
        title: boldText(text: 'Order Details', color: fontGrey, size: 20.0),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: ourButton(title: 'Confirm Order', color: green, onPress: () {}),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              // order delivery status section
              Visibility(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    boldText(text: 'Order Status', color: fontGrey, size: 18.0),
                    SwitchListTile(
                      activeColor: green,
                      value: true,
                      onChanged: (value) {},
                      title: boldText(text: 'Placed'),
                    ),
                    SwitchListTile(
                      activeColor: green,
                      value: false,
                      onChanged: (value) {},
                      title: boldText(text: 'Confirmed'),
                    ),
                    SwitchListTile(
                      activeColor: green,
                      value: false,
                      onChanged: (value) {},
                      title: boldText(text: 'On delivery'),
                    ),
                    SwitchListTile(
                      activeColor: green,
                      value: true,
                      onChanged: (value) {},
                      title: boldText(text: 'Delivered'),
                    ),
                  ],
                )
                    .box
                    .padding(EdgeInsets.all(8.0))
                    .outerShadowMd
                    .border(color: lightGrey)
                    .roundedSM
                    .white
                    .make(),
              ),

              //order details section
              Column(
                children: [
                  10.heightBox,
                  orderPlaceDetails(
                      title1: 'Order code',
                      title2: 'Shipping Method',
                      detail1: "data['order_code']",
                      detail2: "data['shipping_method']"),
                  10.heightBox,
                  orderPlaceDetails(
                      title1: 'Order date',
                      title2: 'Payment Method',
                      detail1: DateTime.now(),
                      // fintl.DateFormat("dd-mm-yyyy  h:mma")
                      //     .format((data['order_date'].toDate())),
                      detail2: "data['payment_method']"),
                  10.heightBox,
                  orderPlaceDetails(
                      title1: 'Payment Status',
                      title2: 'Delivery Status',
                      detail1: 'Unpaid',
                      detail2: 'Order placed'),
                  15.heightBox,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Container(
                          width: 170,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              boldText(
                                  text: 'Shopping Address', color: purpleColor),
                              5.heightBox,
                              'Name: '.text.bold.make(),
                              "{data['order_by_name']}".text.make(),
                              'Email: '.text.bold.make(),
                              "{data['order_by_email']}".text.make(),
                              'Phone: '.text.bold.make(),
                              "{data['order_by_phone']}".text.make(),
                              'Address: '.text.bold.make(),
                              "{data['order_by_address']}".text.make(),
                              'City: '.text.bold.make(),
                              "{data['order_by_city']}".text.make(),
                              'State: '.text.bold.make(),
                              "{data['order_by_state']}".text.make(),
                              'Postal Code: '.text.bold.make(),
                              "{data['order_by_postalCode']}".text.make(),
                              10.heightBox
                            ],
                          ),
                        ),
                        Container(
                          width: 140,
                          child: Column(
                            children: [
                              boldText(
                                  text: 'Total Amount', color: purpleColor),
                              boldText(text: "\$300", color: red, size: 16.0)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
                  .box
                  .outerShadowMd
                  .border(color: lightGrey)
                  .roundedSM
                  .white
                  .make(),
              Divider(),
              10.heightBox,
              boldText(text: "Ordered Products", color: fontGrey, size: 16.0),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(3, (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      orderPlaceDetails(
                          title1: " data['orders'][index]['title']",
                          title2: "data['orders'][index]['tprice']",
                          detail1: "{data['orders'][index]['qty']} x",
                          detail2: 'Refundable'),
                      Container(width: 30, height: 15, color: purpleColor),
                      Divider(),
                    ],
                  ).box.outerShadowMd.white.make();
                }).toList(),
              ).box.outerShadowMd.margin(EdgeInsets.only(bottom: 4)).make(),
              20.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}

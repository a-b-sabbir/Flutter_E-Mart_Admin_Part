import 'package:e_mart_admin/const/colors.dart';
import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: boldText(text: 'Product Title', color: fontGrey, size: 18.0),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VxSwiper.builder(
              autoPlay: true,
              height: 350,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Image.asset(
                  img_product,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.heightBox,
                  boldText(
                      text: 'Product Details', color: fontGrey, size: 16.0),
                  // title!.text.color(darkFontGrey).fontFamily(bold).size(16).make(),
                  10.heightBox,
                  VxRating(
                    isSelectable: false,
                    // value: double.parse(data['p_rating']),
                    value: 3,
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    maxRating: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  boldText(text: '\$300.0', color: red, size: 18.0),
                  10.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: boldText(text: 'Color: ', color: fontGrey),
                          ),
                          Row(
                              children: List.generate(
                                  3,
                                  (index) => VxBox()
                                          .color(Vx.randomPrimaryColor)
                                          .size(40, 40)
                                          .roundedFull
                                          .margin(EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .make()
                                          .onTap(() {
                                        // controller.changeColorIndex(index);
                                      })))
                        ],
                      ).box.padding(EdgeInsets.all(8)).make(),
                      Row(
                        children: [
                          SizedBox(
                              width: 100,
                              child: boldText(
                                  text: 'Quantity: ', color: fontGrey)),
                          normalText(text: '20 items', color: fontGrey)
                        ],
                      ),
                    ],
                  ).box.white.padding(EdgeInsets.all(8.0)).make(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:e_mart_admin/const/colors.dart';
import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/views/products_screen/components/product_dropdown.dart';
import 'package:e_mart_admin/views/products_screen/components/product_images.dart';
import 'package:e_mart_admin/widgets/customTextField.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: darkGrey,
            )),
        title: boldText(text: "Add Product", size: 16.0),
        actions: [
          TextButton(onPressed: () {}, child: boldText(text: save, size: 18.0))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextField(
              hint: 'eg. BMW',
              label: 'Product Name',
            ),
            10.heightBox,
            customTextField(
                hint: 'eg. Nice Product',
                label: 'Product Description',
                isDesc: true),
            10.heightBox,
            customTextField(
              hint: 'eg. \$100',
              label: 'Product Price',
            ),
            10.heightBox,
            customTextField(hint: 'eg. 20', label: 'Quantity'),
            10.heightBox,
            productDropdown(),
            10.heightBox,
            productDropdown(),
            15.heightBox,
            boldText(text: 'Choose Product Images', color: white),
            10.heightBox,
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                    3, (index) => productImage(label: "${index + 1}"))),
            5.heightBox,
            normalText(
                text: 'First image will be your display image',
                color: lightGrey)
          ],
        ),
      ),
    );
  }
}

import 'package:e_mart_admin/views/products_screen/product_details.dart';
import 'package:e_mart_admin/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:e_mart_admin/const/const.dart';
import 'package:intl/intl.dart' as intl;

import '../../widgets/text_style.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        child: Icon(Icons.add),
      ),
      appBar: appbarWidget(
        title: products,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            ListView(
              shrinkWrap: true,
              children: List.generate(
                  9,
                  (index) => Card(
                        child: ListTile(
                          onTap: () {
                            Get.to(() => ProductDetails());
                          },
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
                          trailing: VxPopupMenu(
                              child: Icon(Icons.more_vert_rounded),
                              menuBuilder: () => Column(
                                    children: List.generate(
                                        popupMenuTitles.length,
                                        (index) => Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Row(
                                                children: [
                                                  Icon(popupMenuIcons[index]),
                                                  5.widthBox,
                                                  normalText(
                                                      text: popupMenuTitles[
                                                          index],
                                                      color: darkGrey)
                                                ],
                                              ).onTap(() {}),
                                            )),
                                  )
                                      .box
                                      .width(200)
                                      .roundedSM
                                      .padding(EdgeInsets.all(10))
                                      .white
                                      .make(),
                              clickType: VxClickType.singleClick),
                        ),
                      )),
            )
          ]),
        ),
      ),
    );
  }
}

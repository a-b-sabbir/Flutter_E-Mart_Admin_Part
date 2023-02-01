import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/controller/home_controller.dart';
import 'package:e_mart_admin/views/home_screen/home_screen.dart';
import 'package:e_mart_admin/views/orders_screen/orders_screen.dart';
import 'package:e_mart_admin/views/products_screen/products_screen.dart';
import 'package:e_mart_admin/views/profile_screen/profile_screen.dart';
import 'package:e_mart_admin/widgets/text_style.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var Controller = Get.put(HomeController());

    var navScreens = [
      HomeScreen(),
      OrdersScreen(),
      ProductsScreen(),
      ProfileScreen()
    ];
    var bottomNavbar = [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
          icon: Image.asset(
            ic_products,
            width: 24,
            color: darkGrey,
          ),
          label: products),
      BottomNavigationBarItem(
          icon: Image.asset(
            ic_orders,
            width: 24,
            color: darkGrey,
          ),
          label: orders),
      BottomNavigationBarItem(
          icon: Image.asset(
            ic_general_setting,
            color: darkGrey,
            width: 24,
          ),
          label: settings)
    ];

    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: (index) {
            Controller.navIndex.value = index;
          },
          currentIndex: Controller.navIndex.value,
          items: bottomNavbar,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: purpleColor,
          unselectedItemColor: darkGrey,
        ),
      ),
      body: Column(
        children: [
          Obx(() =>
              Expanded(child: navScreens.elementAt(Controller.navIndex.value)))
        ],
      ),
    );
  }
}

import 'package:e_mart_admin/const/const.dart';
import 'package:e_mart_admin/const/strings.dart';
import 'package:e_mart_admin/views/auth_screen/login_screen.dart';
import 'package:e_mart_admin/views/home_screen/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    checkUser();
    super.initState();
  }

  var isLoggedIn = false;

  checkUser() async {
    auth.authStateChanges().listen((User? user) {
      if (user == null && mounted) {
        isLoggedIn = false;
      } else {
        isLoggedIn = true;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '$appname',
      home: isLoggedIn ? Home() : LoginScreen(),
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(backgroundColor: Colors.transparent, elevation: 0.0)),
    );
  }
}

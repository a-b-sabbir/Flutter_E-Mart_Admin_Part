import 'package:e_mart_admin/const/const.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;

  // Text Controller
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  // login method
  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;

    try {
      userCredential = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  // signout method
  signout(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}

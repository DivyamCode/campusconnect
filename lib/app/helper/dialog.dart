import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogHelper {
  static void showToast({required BuildContext context, required String msg}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }

  static void showLoading({String msg = "Please Wait..."}) {
    Get.dialog(const Card(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: CupertinoActivityIndicator(
          color: Colors.blueAccent,
        ),
      ),
    ));
  }

  static void hideLoading() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }
}

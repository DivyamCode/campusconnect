
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CommonFunctions {
  static Widget spaceVertical(double size) {
    return SizedBox(
      height: size,
    );
  }

  static const metroFareTable = "METRO_FARE";
  static const metroRouteTable = "METRO_ROUTE";
  static const metroConfigTable = "METRO_CONFIG";

  static Widget spaceHorizontal(double size) {
    return SizedBox(
      width: size,
    );
  }

  static double screenHeight(context) => MediaQuery.of(context).size.height;
  static double screenWidth(context) => MediaQuery.of(context).size.width;

  static Future<bool> hasNetwork() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

//hide keyboard
  static void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  //Show Loading
  static void showLoading(context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  // Show Alert
  static void showAlert(String message, {Color? color}) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: color ?? Colors.red,
    );
  }

}

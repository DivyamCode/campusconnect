import 'package:campusconnect/app/common/api/api.dart';
import 'package:campusconnect/app/common/api/dio_client.dart';
import 'package:campusconnect/app/common/api/exceptions.dart';
import 'package:campusconnect/app/common/config/config.dart';
import 'package:campusconnect/app/common/function/commonfunction.dart';
import 'package:campusconnect/app/pages/signup/index.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  SignupState state = SignupState();

  void signup() async {
    final api = NetworkApi(dioClient: DioClient(Dio()));

    //  try {
    //     final fp = await api.addUserApi("","");
    //     print(fp);
    //  }on DioError catch (e) {
    //     final errorMessage = DioExceptions.fromDioError(e).toString();
    //     print(errorMessage);
    //  }

    try {
      final fp =
          await api.post(data: {
             "username":state.usernameController.text,
             "email":state.emailController.text,
             "password":state.passwordController.text
            }, url: Endpoints.registerUser);
      print(fp);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      CommonFunctions.showAlert(errorMessage,color: Colors.blueAccent);
    }

  
  }
}

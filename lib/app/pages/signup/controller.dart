import 'package:campusconnect/app/common/api/api.dart';
import 'package:campusconnect/app/common/api/dio_client.dart';
import 'package:campusconnect/app/common/api/exceptions.dart';
import 'package:campusconnect/app/common/config/config.dart';
import 'package:campusconnect/app/common/function/commonfunction.dart';
import 'package:campusconnect/app/common/routes/routes.dart';
import 'package:campusconnect/app/helper/asyncstore.dart';
import 'package:campusconnect/app/pages/signup/index.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  SignupState state = SignupState();

  void signup(ThemeProvider themeProvider) async {
    final api = NetworkApi(dioClient: DioClient(Dio()));
    if (state.fullnameController.text.isEmpty) {
      CommonFunctions.showAlert("fullname cannot be empty",
          color: themeProvider.getAlertColor);
      return;
    }
    // if (state.usernameController.text.isEmpty) {
    //   CommonFunctions.showAlert("username cannot be empty",
    //       color: themeProvider.getAlertColor);
    //   return;
    // }
    if (state.erpController.text.isEmpty) {
      CommonFunctions.showAlert("erp cannot be empty",
          color: themeProvider.getAlertColor);
      return;
    }
    if (state.rollnoController.text.isEmpty) {
      CommonFunctions.showAlert("rollno cannot be empty",
          color: themeProvider.getAlertColor);
      return;
    }
    if (state.emailController.text.isEmpty) {
      CommonFunctions.showAlert("email cannot be empty",
          color: themeProvider.getAlertColor);
      return;
    }
    if (state.passwordController.text.isEmpty) {
      CommonFunctions.showAlert("password cannot be empty",
          color: themeProvider.getAlertColor);
      return;
    }
    if (state.passwordController.text.length < 8) {
      CommonFunctions.showAlert("password should min 8 len",
          color: themeProvider.getAlertColor);
      return;
    }
    if (state.passwordController.text != state.confirmPassController.text) {
      CommonFunctions.showAlert("pass and confim-pass should be same",
          color: themeProvider.getAlertColor);
      return;
    }

    try {
      final fp = await api.post(data: {
        "fullname":state.fullnameController.text,
        "username": state.usernameController.text,
        "email": state.emailController.text,
        "password": state.passwordController.text,
        "rollno": state.rollnoController.text,
        "erpid":state.erpController.text
      }, url: Endpoints.registerUser);
      if (fp.data['success'] == true) {
        SharedKeyPair preferences = SharedKeyPair();
        await preferences.setString("authToken", fp.data['token']);
        await preferences.setBool("logged",true);
        await preferences.setBool("setwaiting",true); ///for waiting for approval
        Get.offAndToNamed(AppRoutes.waiting);
      }
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      CommonFunctions.showAlert(errorMessage,
          color: themeProvider.getAlertColor);
    }
  }
}

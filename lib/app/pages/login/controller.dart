import 'package:campusconnect/app/common/api/api.dart';
import 'package:campusconnect/app/common/api/dio_client.dart';
import 'package:campusconnect/app/common/api/exceptions.dart';
import 'package:campusconnect/app/common/config/config.dart';
import 'package:campusconnect/app/common/function/commonfunction.dart';
import 'package:campusconnect/app/common/routes/routes.dart';
import 'package:campusconnect/app/helper/asyncstore.dart';
import 'package:campusconnect/app/pages/login/state.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
   LoginState state = LoginState();


   void login(ThemeProvider themeProvider)async{

    
    if(state.rollnoController.text.isEmpty){
      CommonFunctions.showAlert("rollno cannot be empty",color:themeProvider.getAlertColor);
      return;
    }  
    if(state.passwordController.text.isEmpty){
      CommonFunctions.showAlert("password cannot be empty",color:themeProvider.getAlertColor);
      return;
    }

    final api = NetworkApi(dioClient: DioClient(Dio()));
      
       try {
      final fp =
          await api.post(data: {
             "password":state.passwordController.text,
             "rollno":state.rollnoController.text,
            }, url: Endpoints.loginUser);
      if(fp.data['success']==true){
         SharedKeyPair preferences = SharedKeyPair();
         await preferences.setString("authToken",fp.data['token']);
         await preferences.setBool("logged",true);
         Get.offAndToNamed(AppRoutes.home);
      }
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      CommonFunctions.showAlert(errorMessage,color:themeProvider.getAlertColor);
    }
   }
}
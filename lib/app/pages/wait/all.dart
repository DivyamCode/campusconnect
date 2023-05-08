import 'package:campusconnect/app/common/api/api.dart';
import 'package:campusconnect/app/common/api/dio_client.dart';
import 'package:campusconnect/app/common/api/exceptions.dart';
import 'package:campusconnect/app/common/config/config.dart';
import 'package:campusconnect/app/common/function/commonfunction.dart';
import 'package:campusconnect/app/common/routes/routes.dart';
import 'package:campusconnect/app/components/button.dart';
import 'package:campusconnect/app/components/text.dart';
import 'package:campusconnect/app/helper/asyncstore.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class WaitState {
   
}

class WaitController extends GetxController {
    WaitState state = WaitState();


    final isDenied = false.obs;

    void check(ThemeProvider themeProvider)async{
       SharedKeyPair preferences = SharedKeyPair();
       final api = NetworkApi(dioClient: DioClient(Dio()));
       final token = await SharedKeyPair().getString("authToken");
     try {
      final fp = await api.post(data: {
        "token":token
      }, url: Endpoints.checkApproval);

      final denyResponse = await api.post(data: {
        "token":token
      }, url: Endpoints.checkDenied);
      if(denyResponse.data==true){
          await preferences.setBool("logged",false);
          await preferences.setBool("setwaiting",false);
          isDenied.value = true;
      }
      if(fp.data==true){
          await preferences.setBool("setwaiting",false);
          Get.toNamed(AppRoutes.approvedSuccess);
      }
      // if (fp.data['success'] == true) {
      //   // SharedKeyPair preferences = SharedKeyPair();
      //   // await preferences.setString("authToken", fp.data['token']);
      //   // await preferences.setBool("logged",true);
      //   // await preferences.setBool("setwaiting",true); ///for waiting for approval
      //   // Get.offAndToNamed(AppRoutes.waiting);
      // }
    } on DioError catch (e) {
      
      final errorMessage = DioExceptions.fromDioError(e).toString();
      CommonFunctions.showAlert(errorMessage,
          color: themeProvider.getAlertColor);
    }
  }
}


class WaitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WaitController());
  }
   
}

class WaitView extends GetView<WaitController>{
  @override
  Widget build(BuildContext context) {
     
     final themeProvider = Provider.of<ThemeProvider>(context);
     controller.check(themeProvider);
      return Material(
          child: SafeArea(
            child: Obx(() =>controller.isDenied.value==true ?Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset("assets/images/denied.jpg",width: 200,height: 200,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:45),
                    child: TextWidget(color:themeProvider.getDPrimary , size:28, text:"Your Id has been denied by coordinator.", weight:FontWeight.w200,align: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: PrimaryButton(function: (){

                    },labelText: "ReApproval",
                    )
                    // TextWidget(color:themeProvider.getDPrimary, size:16, text:"Please wait, We had notified your coordinator,as soon they approve you will logged in", weight:FontWeight.w400,align: TextAlign.center,),
                  )
              ],
            ):Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
          
                Image.asset("assets/images/waiting.jpg",width: 200,height: 200,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:45),
                  child: TextWidget(color:themeProvider.getDPrimary , size:28, text:"Your Id has been sent for approval.", weight:FontWeight.w200,align: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextWidget(color:themeProvider.getDPrimary, size:16, text:"Please wait, We had notified your coordinator,as soon they approve you will logged in", weight:FontWeight.w400,align: TextAlign.center,),
                )
          
            ],),)

          ),

      );
  }
   
}
import 'package:campusconnect/app/common/routes/routes.dart';
import 'package:campusconnect/app/components/button.dart';
import 'package:campusconnect/app/components/text.dart';
import 'package:campusconnect/app/helper/asyncstore.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class CongratState {

}


class CongratsController extends GetxController {
    CongratState state = CongratState();
}


class CongratBinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => CongratsController());
  }
   
}

class CongratView extends GetView<CongratsController>{
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Material(
      
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/cele.png",width: MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.width,fit: BoxFit.contain,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                TextWidget(color:themeprovider.getDPrimary, size:35, text:"Your id has been verified", weight:FontWeight.w100,align: TextAlign.center,),
                const SizedBox(height: 32,),
                TextWidget(color:themeprovider.getDGrey, size:20, text:"Wohho! you all are set to connect with amazing people in your campus", weight:FontWeight.w500,align: TextAlign.center,),
                const SizedBox(height: 32,),
                PrimaryButton(function:()async{
                   SharedKeyPair preferences = SharedKeyPair();
                   await preferences.setBool("setwaiting",false);
                   Get.offAndToNamed(AppRoutes.home);
                }, labelText:"Go to Home")
              ],
            ),
          ),]
      
      )
      
    );
  }
}
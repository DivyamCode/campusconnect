import 'package:campusconnect/app/components/button.dart';
import 'package:campusconnect/app/pages/login/index.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../components/text.dart';

class LoginView extends GetView<LoginController> {
   @override
   Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(left:25, right:25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(color:themeProvider.getPrimaryColor, size:26, text:"Sign Up", weight:FontWeight.w400),
                  const SizedBox(height: 10.0),
                  TextWidget(color:Colors.black87, size:16, text:"Please enter rollno and password, for login", weight:FontWeight.w400),
                  const SizedBox(height: 20.0),
                  const SizedBox(height: 10.0),
                  TextWidget(color:themeProvider.getlabelInputColor,size:19, text:"Roll no", weight:FontWeight.w500),
                  input(themeProvider,"please enter rollno",controller.state.rollnoController),
                  TextWidget(color:themeProvider.getlabelInputColor,size:19, text:"Password", weight:FontWeight.w500),
                  passInput(themeProvider,"please enter password", controller.state.passwordController,controller),
                  const SizedBox(height: 20.0),
                  Row(children: [
                    TextWidget(color: themeProvider.getPrimaryColor, size:16, text:"By continuing you agree to our ", weight:FontWeight.w400),
                    TextWidget(color:themeProvider.getTextColor, size:16, text:"Terms of Service", weight:FontWeight.w400),
                  ],),
                  Row(children: [
                      TextWidget(color: themeProvider.getPrimaryColor, size:16, text:"and ", weight:FontWeight.w400),
                      TextWidget(color:themeProvider.getTextColor, size:16, text:"Privacy Policy.", weight:FontWeight.w400),
                  ],),
                  const SizedBox(height: 25,),
                  PrimaryButton(
                    function:()=>controller.login(themeProvider),
                    labelText: "Login",
                    background: const Color(0xff54D460),
                  ), 
              
               
             
             
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container input(ThemeProvider themeProvider,String hintText,TextEditingController controller) {
    return Container(
      padding:const EdgeInsets.only(left: 10,right: 10),
      margin: const EdgeInsets.only(bottom: 10,top: 10),
      decoration: BoxDecoration(  
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color:themeProvider.gettitlecolor)
      ),
      child: TextField(
        controller:controller,
        decoration:InputDecoration(
          hintText:hintText,
          border: InputBorder.none
        ),
      ),
    );
  }
  Obx passInput(ThemeProvider themeProvider,String hintText,TextEditingController controller,LoginController getxController) {
    return Obx(() => Container(
      padding:const EdgeInsets.only(left: 10,right: 10),
      margin: const EdgeInsets.only(bottom: 10,top: 10),
      decoration: BoxDecoration(  
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color:themeProvider.gettitlecolor)
      ),
      child: TextField(
        controller:controller,
        obscureText: getxController.state.passwordShow.value,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: () {
              getxController.state.passwordShow.value = !getxController.state.passwordShow.value;
            },
            child: Icon(
              getxController.state.passwordShow.value == true?
              Icons.visibility: Icons.visibility_off,
            ),
          ),
          hintText:hintText,
          border: InputBorder.none
        ),
      ),
     )
   );
  }
   
}
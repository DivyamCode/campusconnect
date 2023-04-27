import 'package:campusconnect/app/pages/onboarding/index.dart';
import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class OnBoardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
     final themeprovider = Provider.of<ThemeProvider>(context);
    return Material(
      child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: 
                  ColorFilter.mode(Colors.black.withOpacity(0.45), 
                  BlendMode.darken),
                image:const AssetImage( "images/next.png"),
              ),
            ),
          ),
           Container(padding:const EdgeInsets.symmetric(vertical: 70,horizontal: 30),
             child: Column(mainAxisAlignment: MainAxisAlignment.end,children: [
                  Text("Welcome",
                    style: TextStyle(
                      color: themeprovider.getSecondaryColor,
                      fontSize:31,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 16.h,),
                  Text("Connecting professionals, creating communities, and facilitating student marketplace",
                    style: TextStyle(
                      color: themeprovider.getSecondaryColor,
                      fontSize:16,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 26.h,),
                  Container(
                    alignment: Alignment.center,
                    padding:const EdgeInsets.only(top: 20,bottom: 20),
                    decoration: BoxDecoration(
                      color: themeprovider.getTextColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize:18,
                        fontWeight: FontWeight.w200,
                        color: themeprovider.getSecondaryColor,
                      ),
                    ),
                  ),],
             ),
           )
        ],
      ),
    );
  }

}
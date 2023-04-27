import 'package:campusconnect/app/common/routes/routes.dart';
import 'package:campusconnect/app/pages/onboarding/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPages {
   static const initial = AppRoutes.initial;
  //  static const Application = AppRoutes.Application;
   static final RouteObserver<Route> observer = RouteObserver();

   static List<String> history = [];
   static final List<GetPage> routes = [
      GetPage(
        name:AppPages.initial, 
        page:() =>OnBoardingView() ,
        binding: OnBoardingBinding()
      ),
   ];

}
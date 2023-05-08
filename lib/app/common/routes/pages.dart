import 'package:campusconnect/app/common/routes/routes.dart';
import 'package:campusconnect/app/pages/home/index.dart';
import 'package:campusconnect/app/pages/login/index.dart';
import 'package:campusconnect/app/pages/onboarding/index.dart';
import 'package:campusconnect/app/pages/signup/index.dart';
import 'package:campusconnect/app/pages/wait/all.dart';
import 'package:campusconnect/app/pages/wait/congrat/all.dart';
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
      GetPage(
        name:AppRoutes.signup, 
        page:() =>SignupView(),
        binding: SignupBinding()
      ),
      GetPage(
        name:AppRoutes.login, 
        page:() =>LoginView(),
        binding: LoginBinding()
      ),
      GetPage(
        name:AppRoutes.home, 
        page:() =>MainHomeView(),
        binding:MainHomeBinding()
      ),
      GetPage(
        name:AppRoutes.waiting, 
        page:() =>WaitView(),
        binding:WaitBinding()
      ),
      GetPage(
        name:AppRoutes.approvedSuccess, 
        page:() =>CongratView(),
        binding:CongratBinding()
      ),

      
   ];

}
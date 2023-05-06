import 'package:campusconnect/app/pages/home/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainHomeController extends GetxController {

    MainHomeState state = MainHomeState();

    final bottomIndex = 0.obs;

    void changeBottomIndex(int index){
      //  bottomIndex.value = index;

       handleIndexChanged(index);
    }

    final pageController = PageController(initialPage: 0);

    final List<Widget> bottomBarPages = [
        DivPageOne(),
        DivPageTwo(),
        DivPageThree(),
        DivPageFour()
    ];

     handleIndexChanged(int i){
        
        pageController.animateToPage( i,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeIn,
      );
      bottomIndex.value = i;
    }
    
}
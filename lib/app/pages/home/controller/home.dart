import 'package:campusconnect/app/pages/home/index.dart';
import 'package:campusconnect/app/pages/home/view/page_four.dart';
import 'package:campusconnect/app/pages/home/view/page_one.dart';
import 'package:campusconnect/app/pages/home/view/page_three.dart';
import 'package:campusconnect/app/pages/home/view/page_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainHomeController extends GetxController {

    MainHomeState state = MainHomeState();

    final bottomIndex = 0.obs;
    final miniIndex = 0.obs;

    void changeBottomIndex(int index){
      //  bottomIndex.value = index;

       handleIndexChanged(index);
    }

    void changeMiniIndex(int index){
      //  bottomIndex.value = index;

       handleIndexChangedMini(index);
    }

    final pageController = PageController(initialPage: 0);
    final tabMultiPage = PageController(initialPage: 0);

    final List<Widget> bottomBarPages = [
        const DivPageOne(),
        DivPageTwo(),
        const DivPageThree(),
        const DivPageFour()
    ];
    final List<Widget> tabMultiPageList = [
        ChatMiniTab(),
        PostMiniTab(),
        ExploreMiniTab(),
        EventMiniTab()
    ];

     handleIndexChanged(int i){
        
        pageController.animateToPage( i,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeIn,
      );
      bottomIndex.value = i;
    }

    handleIndexChangedMini(int i){
        
        tabMultiPage.animateToPage( i,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeIn,
      );
      bottomIndex.value = i;
    }



    ///____________________FRESH_________________
    ///
    ///
    ///
    

    // final showBtmAppBr = true.obs;


    String exp = "experiment";

    
}
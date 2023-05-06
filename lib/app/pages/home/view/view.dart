import 'package:campusconnect/app/common/function/commonfunction.dart';
import 'package:campusconnect/app/components/bottonnav.dart';
import 'package:campusconnect/app/pages/home/index.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class MainHomeView extends GetView<MainHomeController>{
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Material(
      child: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.end,children: [
          SizedBox(
            height: CommonFunctions.screenHeight(context)-77,
            child: PageView(
              controller:controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                  controller.bottomBarPages.length, (index) =>  controller.bottomBarPages[index]),
            ),
          ),
          Obx(() => DivBottomNavBar(themeProvider: themeProvider,index:controller.bottomIndex.value,onTap:controller.changeBottomIndex,))
        ],),
      ),
    );
  }
   
}






class DivPageFour extends StatelessWidget {
const DivPageFour({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Column(children: [
        Row(children: [
      
        ],)
      ],),
    );
  }
}


class DivPageThree extends StatelessWidget {
const DivPageThree({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(children: [
        // Text("hi")
      ],),
    );
  }
}


class DivPageTwo extends StatelessWidget {
const DivPageTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(children: [
        // Text("hi")
      ],),
    );
  }
}


class DivPageOne extends StatelessWidget {
const DivPageOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(children: [
        // Text("hi")
      ],),
    );
  }
}



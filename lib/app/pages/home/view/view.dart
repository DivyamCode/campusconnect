import 'package:campusconnect/app/common/function/commonfunction.dart';
import 'package:campusconnect/app/components/bottonnav.dart';
import 'package:campusconnect/app/pages/home/index.dart';
import 'package:campusconnect/app/provider/refresh.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class MainHomeView extends GetView<MainHomeController>{
  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          height: CommonFunctions.screenHeight(context)-70,
          child: PageView(
            controller:controller.pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
                controller.bottomBarPages.length, (index) =>  controller.bottomBarPages[index]),
          ),
        ),
        // Obx(() => DivBottomNavBar(themeProvider: themeProvider,index:controller.bottomIndex.value,onTap:controller.changeBottomIndex,))
      ],),
      // floatingActionButtonLocation:scrollProvider.showBottom
      //     ? FloatingActionButtonLocation.centerDocked
      //     : FloatingActionButtonLocation.centerFloat,
      // floatingActionButton:scrollProvider.showBottom!=true?null:Obx((){
      //   if(controller.bottomIndex.value!=0){
      //     return const SizedBox();
      //   }else{
      //     return FloatingActionButton(onPressed: () {},
      //         child: const Icon(
      //           Icons.add,
      //         ));
      //     }
      //  }
      // ),
      bottomNavigationBar:AnimatedBottomNavBar(showBtmAppBr:scrollProvider.showBottom,onClick: controller.changeBottomIndex,)
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


// class DivPageOne extends StatelessWidget {
// const DivPageOne({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context){
//     return Container(
//       child: Column(children: [
//         // Text("hi")
//       ],),
//     );
//   }
// }



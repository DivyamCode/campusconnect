import 'package:campusconnect/app/common/function/commonfunction.dart';
import 'package:campusconnect/app/components/text.dart';
import 'package:campusconnect/app/pages/home/controller/home.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:reveal_on_scroll/reveal_on_scroll.dart';
import 'package:slide_switcher/slide_switcher.dart';


// class DxP extends GetView<MainHomeController>{
//   @override
//   Widget build(BuildContext context) {
//      return Material(
//        child: Center(
//         child: SafeArea(child:Text(controller.exp)),
//        ),
//      );
//   }

// }



class DivPageTwo extends GetView<MainHomeController>{
  final List<int> dx = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,11,1,11,1,1,1,1,1,1];

  // int switcherIndex1 = 0;

  final ScrollController _controller = ScrollController();

  int index =0;

  @override
  Widget build(BuildContext context){
    final themeProvider = Provider.of<ThemeProvider>(context);
    int i =0;
    return SafeArea(
      child: Container(
        color:Colors.white54,
        padding:const EdgeInsets.symmetric(horizontal: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 40,),
            TextWidget(color:themeProvider.getPrimaryColor, size:20, text:"Community", weight:FontWeight.w500),
            const SizedBox(height: 10,),
            SingleChildScrollView(scrollDirection:Axis.horizontal,
              physics:const BouncingScrollPhysics(),
              child: Row(children:dx.map((e) =>communityWidget(themeProvider,i++)).toList()),
            ),
            // Container(
              
            //   decoration: BoxDecoration(
            //     color: themeProvider.getNavBarGreen,
            //     borderRadius:BorderRadius.circular(10)
            //   ),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //      TextWidget(color:themeProvider.getPrimaryColor, size:15, text:"Community", weight:FontWeight.w500),
            //      TextWidget(color:themeProvider.getPrimaryColor, size:15, text:"Community", weight:FontWeight.w500),
            //      TextWidget(color:themeProvider.getPrimaryColor, size:15, text:"Community", weight:FontWeight.w500),
            //      TextWidget(color:themeProvider.getPrimaryColor, size:15, text:"Community", weight:FontWeight.w500),
            //   ],),
            // ),

            
              const SizedBox(height: 20,),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SlideSwitcher(
                      onSelect: (index) {
                        controller.handleIndexChangedMini(index);
                        // switcherIndex1 = index;
                      },
                      // onSelect: (index) => setState(() => switcherIndex1 = index),
                      containerHeight:50,
                      containerWight: 350,
                      indents:5,
                      children: [
                        TextWidget(color:themeProvider.getPrimaryColor, size:15, text:"Chat", weight:FontWeight.w400),
                        TextWidget(color:themeProvider.getPrimaryColor, size:15, text:"Post", weight:FontWeight.w400),
                        TextWidget(color:themeProvider.getPrimaryColor, size:15, text:"Explore", weight:FontWeight.w400),
                        TextWidget(color:themeProvider.getPrimaryColor, size:15, text:"Event", weight:FontWeight.w400),
                      ],
                      // slidersColors: [themeProvider.getNavBarGreen],
                    ),
                    const SizedBox(height: 10,),
                    // SizedBox(height: CommonFunctions.screenHeight(context)-364,
                    //   child: PageView(
                    //     controller:controller.tabMultiPage,
                    //     physics: const NeverScrollableScrollPhysics(),
                    //     children: List.generate(
                    //         controller.tabMultiPageList.length, (index) =>  controller.tabMultiPageList[index]),
                    //   ),
                    // ),
                    ScrollToReveal.withAnimation(
                        label: 'Scroll$index',
                        scrollController: _controller,
                        reflectPosition: -100,
                        animationType: AnimationType.findInLeft,
                        child: Container(height:30,color: Colors.red,child: Text("."),),
                    )


                    // const SizedBox(height: 20),
                    // if (switcherIndex1 == 0) ...[
                    //   SizedBox(height: CommonFunctions.screenHeight(context)-354,
                    //     child: ListView.builder(itemBuilder: (context, index) {
                    //        return ChatInitialTile(themeProvider: themeProvider);
                    //     },),
                    //   )
                    // ]
                    // else ...[
                    //   Container(height: 100, width: 100, color: Colors.green,)
                    // ],
                    
                  ],
                ),
              ),
        ],),
      ),
    );
  }

  Container communityWidget(ThemeProvider themeProvider,int index) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal:5),
      // decoration: BoxDecoration(
      //   color: themeProvider.getNavBarGreen,
      //   borderRadius:BorderRadius.circular(10)
      // ),
      child:Column(
        children: [    
          Container(
            decoration: BoxDecoration(color: const Color.fromARGB(255, 165, 125, 139),borderRadius: BorderRadius.circular(50)),
            height: 45,
            width: 45,
            child:const Text(""),
          ),
          const SizedBox(height:10,),
          TextWidget(color:themeProvider.getPrimaryColor, size:10, text:"Community $index", weight:FontWeight.w500),
        ],
      ),
    );
  }
}

class ChatInitialTile extends StatelessWidget {
  const ChatInitialTile({
    super.key,
    required this.themeProvider,
  });

  final ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness:1.5,color: themeProvider.getDividerColor,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Row(children: [
              Container(
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 165, 125, 139),borderRadius: BorderRadius.circular(50)),
                  height: 45,
                  width: 45,
                  child:const Text(""),
                ),
                const SizedBox(width:10,),
                TextWidget(color:themeProvider.getPrimaryColor, size:10, text:"Community", weight:FontWeight.w500),
          
          ],),
        ),
      ],
    );
  }
}



class ChatMiniTab extends GetView<MainHomeController>{
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    
    return Container(
       child: ListView.builder(itemBuilder: (context, index) {
          return ChatInitialTile(themeProvider: themeProvider);
      },),
    );
  }
}


class PostMiniTab extends GetView<MainHomeController>{
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    
    return Container(
       child: Text("post")
    );
  }
}
class ExploreMiniTab extends GetView<MainHomeController>{
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    
    return Container(
       child: Text("explore")
    );
  }
}
class EventMiniTab extends GetView<MainHomeController>{
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    
   return Container(
       child: Text("events")
    );
  }
}
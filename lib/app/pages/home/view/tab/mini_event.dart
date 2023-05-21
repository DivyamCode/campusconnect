import 'package:campusconnect/app/components/button.dart';
import 'package:campusconnect/app/components/text.dart';
import 'package:campusconnect/app/pages/home/controller/home.dart';
import 'package:campusconnect/app/pages/home/view/page_two.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class EventMiniTab extends GetView<MainHomeController>{

  const EventMiniTab({super.key});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    final dt = DateTime.now();
    // final List<int> dx = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,11,1,11,1,1,1,1,1,1];
    int i =0;

    
    
   return SingleChildScrollView(
     child: Column(children: [
         const SizedBox(height: 10,),
        SingleChildScrollView(scrollDirection:Axis.horizontal,
          physics:const BouncingScrollPhysics(),
          child: Row(children:controller.imageCommunity.map((e) =>CommunityScroll(themeProvider:themeProvider,index:i++,url:e,)).toList()),
        ),
        //  EventCard(),
         GridView.builder(
         physics: const NeverScrollableScrollPhysics(),
         shrinkWrap: true,
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      mainAxisExtent: 330,
         ),
         itemCount: controller.gridMap.length,
         itemBuilder: (_, index) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.0,
          ),
          color: Colors.blue.shade100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              child: Image.network(
                "${controller.gridMap.elementAt(index)['images']}",
                height: 170,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${controller.gridMap.elementAt(index)['title']}",
                    style: Theme.of(context).textTheme.subtitle1!.merge(
                          const TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                  ),
                  const SizedBox(height: 8.0,),
                  TextWidget(color:themeProvider.getDPrimary, size:14, text:"Venue ${controller.gridMap.elementAt(index)['venue']}", weight:FontWeight.w500),
                  const SizedBox(height: 8.0,),
                  // Text(
                  //   "${controller.gridMap.elementAt(index)['price']}",
                  //   style: Theme.of(context).textTheme.subtitle2!.merge(
                  //         TextStyle(
                  //           fontWeight: FontWeight.w700,
                  //           color: Colors.grey.shade500,
                  //         ),
                  //       ),
                  // ),


                  
                  
                  // Text(
                  //   "${gridMap.elementAt(index)['price']}",
                  //   style: Theme.of(context).textTheme.subtitle2!.merge(
                  //         TextStyle(
                  //           fontWeight: FontWeight.w700,
                  //           color: Colors.grey.shade500,
                  //         ),
                  //       ),
                  // ),
                  Text(
                    DateFormat.yMd().format(dt),
                    style: Theme.of(context).textTheme.subtitle2!.merge(
                          TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade500,
                          ),
                        ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  
                  SecondaryButton(function:(){}, labelText:"join/register",textSize: 12,radius: 9,)
                ],
              ),
            ),
          ],
        ),
      );
         },
       )
     
     ],),
   );
  }
















}
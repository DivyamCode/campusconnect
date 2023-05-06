import 'package:campusconnect/app/components/text.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DivBottomNavBar extends StatelessWidget {
  const DivBottomNavBar({
    super.key,
    required this.themeProvider,
    required this.index,
    required this.onTap
  });
  final int index;
  final Function onTap;

  final ThemeProvider themeProvider;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: themeProvider.getNavBarGreen.withOpacity(0.2),
        borderRadius:const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
      ),
      padding: EdgeInsets.only(left:35.w,right: 35.w,top: 15,bottom:14),
      height: 70,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        _bottomNavItem("assets/logo/home.png","Home",index==0? themeProvider.getNavBarGreen:themeProvider.getDPrimary.withOpacity(0.7),0),
        _bottomNavItem("assets/logo/shop.png","Shop",index==1? themeProvider.getNavBarGreen:themeProvider.getDPrimary.withOpacity(0.7),1),
        _bottomNavItem("assets/logo/community.png","Community",index==2? themeProvider.getNavBarGreen:themeProvider.getDPrimary.withOpacity(0.7),2),
        _bottomNavItem("assets/logo/profile.png","Profile",index==3? themeProvider.getNavBarGreen:themeProvider.getDPrimary.withOpacity(0.7),3)
      ],),
    );
  }

  InkWell _bottomNavItem(String icon,String label,Color color,int index) {
    return InkWell(
      onTap:(){
        onTap(index);
      },
      child: Column(children: [
        Image.asset(icon,color:color),
        const SizedBox(height:3,),
        TextWidget(color:color, size:12, text:label, weight:FontWeight.w200)
      ],),
    );
  }
}
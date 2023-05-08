import 'package:campusconnect/app/components/text.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/cupertino.dart';
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








class AnimatedBottomNavBar extends StatelessWidget {
  const AnimatedBottomNavBar({
    super.key,
    required this.showBtmAppBr,
    required this.onClick
  });

  final bool showBtmAppBr;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 800,
      ),
      curve: Curves.easeInOutSine,
      height: showBtmAppBr ? 70 : 0,
      child: BottomAppBar(
        notchMargin: 8.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                onClick(0);
              },
              icon: const Icon(
                // Icons.home_outlined,
                CupertinoIcons.home
              ),
            ),
            IconButton(
              onPressed: () {
                onClick(1);
              },
              icon: const Icon(
                CupertinoIcons.heart,
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            IconButton(
              onPressed: () {
                onClick(2);
              },
              icon: const Icon(
                CupertinoIcons.cart,
              ),
            ),
            IconButton(
              onPressed: () {
                onClick(3);
              },
              icon: const Icon(
                CupertinoIcons.profile_circled,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
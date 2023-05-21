import 'package:campusconnect/app/common/function/commonfunction.dart';
import 'package:campusconnect/app/components/img.dart';
import 'package:campusconnect/app/components/text.dart';
import 'package:campusconnect/app/pages/home/controller/home.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ExploreMiniTab extends GetView<MainHomeController> {
  final List<String> imgList = [
    'https://img.freepik.com/free-vector/people-shape-logo-design_1025-884.jpg?w=740&t=st=1684660201~exp=1684660801~hmac=c1dc31213049389367389b3f2febf508b3fa7870fca43ca76b33da78ec46b219',
    'https://img.freepik.com/free-vector/gradient-culture-logo-design-template_23-2149878688.jpg?size=626&ext=jpg',
    'https://img.freepik.com/free-vector/community-logo-template_1061-107.jpg?w=740&t=st=1684660272~exp=1684660872~hmac=2e2711c772a07bf914fbcbda2766a3ed7cd26eb96246e3150bc52c8970ec35d2',
  ];

  ExploreMiniTab({super.key});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          newMethod(
            themeProvider,
            context,
            themeProvider.getListTileGradient,
          ),
          ongoingPoll(themeProvider, context),
          Container(
          margin: const EdgeInsets.only(top: 15, bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            gradient: themeProvider.getSubscriptionLinearGradient,
            border: Border.all(color: themeProvider.getDGrey, width: 1),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/noti.png",
                width: CommonFunctions.screenWidth(context) / 2.2,
              ),
              SizedBox(
                width: CommonFunctions.screenWidth(context) / 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      color: themeProvider.getSecondaryColor,
                      size: 22,
                      text: "Notice\nDean admin",
                      weight: FontWeight.w500),
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    // height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: themeProvider.getDividerColor, width: 1.5),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Stack(
                      children: [
                        NetworkImgWidget(url: imgList[1]),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: NetworkImgWidget(url: imgList[0]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: NetworkImgWidget(url: imgList[2]),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
        ],
      ),
    );
  }

  Container ongoingPoll(ThemeProvider themeProvider, BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(top: 15, bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            gradient: themeProvider
                .getPremiumTokenCardGradient, // themeProvider.getSubscriptionLinearGradient,
            border: Border.all(color: themeProvider.getDGrey, width: 1),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/feedback.png",
                width: CommonFunctions.screenWidth(context) / 2.2,
              ),
              SizedBox(
                width: CommonFunctions.screenWidth(context) / 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      color: themeProvider.getDPrimary,
                      size: 22,
                      text: "Ongoing\npoll",
                      weight: FontWeight.w500),
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    // height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: themeProvider.getDividerColor, width: 1.5),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Stack(
                      children: [
                        NetworkImgWidget(url: imgList[1]),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: NetworkImgWidget(url: imgList[0]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: NetworkImgWidget(url: imgList[2]),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        );
  }

  Container newMethod(ThemeProvider themeProvider, BuildContext context,
      LinearGradient gradient) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        gradient: gradient,
        border: Border.all(color: themeProvider.getDGrey, width: 1),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            "assets/images/fivepoints.png",
            width: CommonFunctions.screenWidth(context) / 2.2,
          ),
          SizedBox(
            width: CommonFunctions.screenWidth(context) / 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                  color: themeProvider.getSecondaryColor,
                  size: 22,
                  text: "Your\nevents",
                  weight: FontWeight.w500),
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                // height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: themeProvider.getDividerColor, width: 1.5),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Stack(
                  children: [
                    NetworkImgWidget(url: imgList[1]),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: NetworkImgWidget(url: imgList[0]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: NetworkImgWidget(url: imgList[2]),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

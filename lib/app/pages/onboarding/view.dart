import 'package:campusconnect/app/common/function/commonfunction.dart';
import 'package:campusconnect/app/common/routes/routes.dart';
import 'package:campusconnect/app/components/button.dart';
import 'package:campusconnect/app/pages/onboarding/index.dart';
import 'package:campusconnect/app/theme/hex.dart';
import 'package:campusconnect/app/provider/refresh.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class OnBoardingView extends GetView<OnboardingController> {

  // Widget build(BuildContext context) {
  //    final themeprovider = Provider.of<ThemeProvider>(context);
  //   return Material(
  //     child: Stack(children: [
  //         Container(
  //           height: MediaQuery.of(context).size.height,
  //           width:MediaQuery.of(context).size.width,
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //               fit: BoxFit.cover,
  //               colorFilter: 
  //                 ColorFilter.mode(Colors.black.withOpacity(0.45), 
  //                 BlendMode.darken),
  //               image:const AssetImage( "images/next.png"),
  //             ),
  //           ),
  //         ),
  //          Container(padding:const EdgeInsets.symmetric(vertical: 70,horizontal: 30),
  //            child: Column(mainAxisAlignment: MainAxisAlignment.end,children: [
  //                 Text("Welcome",
  //                   style: TextStyle(
  //                     color: themeprovider.getSecondaryColor,
  //                     fontSize:31,
  //                     fontWeight: FontWeight.w700,
  //                   ),
  //                 ),
  //                 SizedBox(height: 16.h,),
  //                 Text("Connecting professionals, creating communities, and facilitating student marketplace",
  //                   style: TextStyle(
  //                     color: themeprovider.getSecondaryColor,
  //                     fontSize:16,
  //                     fontWeight: FontWeight.w500,
  //                   ),
  //                   textAlign: TextAlign.center,
  //                 ),
  //                 SizedBox(height: 26.h,),
  //                 Container(
  //                   alignment: Alignment.center,
  //                   padding:const EdgeInsets.only(top: 20,bottom: 20),
  //                   decoration: BoxDecoration(
  //                     color: themeprovider.getTextColor,
  //                     borderRadius: BorderRadius.circular(15),
  //                   ),
  //                   child: Text(
  //                     "Get Started",
  //                     style: TextStyle(
  //                       fontSize:18,
  //                       fontWeight: FontWeight.w200,
  //                       color: themeprovider.getSecondaryColor,
  //                     ),
  //                   ),
  //                 ),],
  //            ),
  //          )
  //       ],
  //     ),
  //   );
  // }

  // int controller.dotIndicatorIndex = 0;


  final List<String> introductionTexts = ["Discover the charities of top philanthropists",
    "Support the campaigns you are passionate about." ,
    "Earn the points to be recognized by charities, featured funders and philanthropists!",
    "Feel free to login and signup.your data privacy is our first privacy"];

  // there was no images in figma so i used these colors
  final List<String> images = ["images/ob1.jpg" , "images/ob2.jpg" ,"images/ob3.jpg", "images/ob4.jpg"];

  @override
  Widget build(BuildContext context) {
    final refreshProvider = Provider.of<RefreshProvider>(context);
    controller.oneTimeHit();
    return Scaffold(
        body: Stack(children: <Widget>[
            Container(height: 609,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images[controller.dotIndicatorIndex],),
                  fit: BoxFit.cover,
                  colorFilter: const ColorFilter.matrix([0.5, 0, 0, 0, 0,0, 0.5, 0, 0, 0,0, 0, 0.5, 0, 0,0, 0, 0, 1, 0,
                  ]),
                )
              ),
            ) ,
            // topText(),
            Container(alignment: Alignment.topCenter,
              // margin:EdgeInsets.only(top: 500),
              margin: EdgeInsets.only(top: CommonFunctions.screenHeight(context)/1.6),
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0) ,topRight: Radius.circular(30.0)),
                color: Colors.white,
              ),

              // child: Stack(alignment: Alignment.topCenter,
              child: Column(//alignment: Alignment.topCenter,
                children: <Widget>[
                  get_introduction_texts(),
                  get_dot_indicator(),
                  const SizedBox(height: 15,),
                  Container(margin:const EdgeInsets.only(left: 35.0 ,right: 35.0),//top: 192.0, 
                     child: getButton(refreshProvider: refreshProvider),
                  )

                ],
              ),
            )
          ],
        )
    );
  }




  Widget topText(){
    if(controller.dotIndicatorIndex <= 2) {
      return Container(margin: const EdgeInsets.only(top: 80.0, left: 35.0, right: 40.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                Text("CampusConnect", style: TextStyle(
                  fontSize: 22.0,
                  foreground: Paint()..shader = LinearGradient(
                    colors: <Color>[
                      Hexcolor("#FFFFFF"),
                      Hexcolor("#DEC776"),
                      //add more color here.
                    ],
                  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
                ),),
                const InkWell(
                  child: Text("Skip", style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),),
                  // onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> OnBoarding_Screen_Page())),
                )
              ],
            ),
        );
    }
    else{
      return   Container(

        margin: const EdgeInsets.only(top: 80.0, left: 35.0, right: 40.0),
        child: Row(

          children: <Widget>[
            Text("CampusConnect", style: TextStyle(
              fontSize: 22.0,
              foreground: Paint()..shader = LinearGradient(
                colors: <Color>[
                  Hexcolor("#FFFFFF"),
                  Hexcolor("#DEC776"),
                  //add more color here.
                ],
              ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
            ),),
          ],
        ),
      );
    }
  }




  // ignore: non_constant_identifier_names
  Widget get_introduction_texts(){
    if(controller.dotIndicatorIndex==0){
      return Container(
        margin: const EdgeInsets.only(top: 40),
        height: 70,
        width: 350.41,
        child: Center(
          child: Text(introductionTexts[controller.dotIndicatorIndex] ,style: const TextStyle(
            fontSize: 24.0,
            color: Colors.black,
            fontFamily: 'Nunito Sans',
          ),textAlign: TextAlign.center,),
        ),
      );
    }
    else if(controller.dotIndicatorIndex==1){
      return Container(
        margin: const EdgeInsets.only(top: 40),
        height: 70,
        width: 350.41,
        child: Center(
          child: Text(introductionTexts[controller.dotIndicatorIndex] ,style: const TextStyle(
            fontSize: 24.0,
            color: Colors.black,
            fontFamily: 'Nunito Sans',
          ),textAlign: TextAlign.center,),
        ),
      );
    }
    else if(controller.dotIndicatorIndex==2){
      return Container(
        margin: const EdgeInsets.only(top: 30),
        height: 90,
        width: 354.0,
        child: Center(
          child: Text(introductionTexts[controller.dotIndicatorIndex] ,style: const TextStyle(
            fontSize: 24.0,
            color: Colors.black,
            fontFamily: 'Nunito Sans'
          ),textAlign: TextAlign.center,),
        ),
      );
    }
    else{
      return Container(
        margin: const EdgeInsets.only(top: 30),
        height: 90,
        width: 354.0,
        child: Center(
          child: Text(introductionTexts[controller.dotIndicatorIndex] ,style: const TextStyle(
            fontSize: 24.0,
            color: Colors.black,
            fontFamily: 'Nunito Sans'
          ),textAlign: TextAlign.center,),
        ),
      );
    }
  }



  Widget get_dot_indicator(){
    return DotsIndicator(
      dotsCount: introductionTexts.length,
      position: controller.dotIndicatorIndex + 0.0,
      decorator:  DotsDecorator(
        color: Hexcolor("#D9D9D9"), // Inactive color
        activeColor: Hexcolor("#2F706D"),
      ),
    );
  }






  Widget getButton({required RefreshProvider refreshProvider}){
    if(controller.dotIndicatorIndex == 0) {
      return  InkWell(
        child: Buttons("Next", Hexcolor("#2F706D"), Colors.white, 320,  50).getButton(),
        onTap: () {
            controller.dotIndicatorIndex ++;
            refreshProvider.refresh();
        },
      );
    }
    else if(controller.dotIndicatorIndex == 1 || controller.dotIndicatorIndex == 2){
      return InkWell(
        child: Container(
          width: 320,
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                child: Buttons("Previous",  Hexcolor("#E6E6E6"), Colors.black , 150 ,50).getButton(),
                onTap: (){
                  // setState(() {
                    controller.dotIndicatorIndex--;
                    refreshProvider.refresh();
                  // });
                },
              ),
              const SizedBox(width: 20,),
              InkWell(
                child: Buttons("next", Hexcolor("#2F706D"), Colors.white , 150 ,50).getButton(),
                onTap: (){
                  // setState(() {
                    controller.dotIndicatorIndex++;
                    refreshProvider.refresh();
                    // print("next");
                  // });
                },
              )
            ],
          ),
        ),
      );
    }
    else {
      return Column(
        children: [
          InkWell(
            child: Buttons("Signup", Hexcolor("#2F706D"), Colors.white , 320 ,50).getButton(),
            onTap: () {
              Get.toNamed(AppRoutes.signup);
            },
          ),
          const SizedBox(height: 15,),
          InkWell(
            child: Buttons("Login", Hexcolor("#2F706D"), Colors.white , 320 ,50).getButton(),
            onTap: () {
              Get.toNamed(AppRoutes.login);
             },
          ),
        ],
      );
    }
  }
}
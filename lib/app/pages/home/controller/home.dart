import 'package:campusconnect/app/pages/home/index.dart';
import 'package:campusconnect/app/pages/home/view/tab/mini_explore.dart';
import 'package:campusconnect/app/pages/home/view/page_four.dart';
import 'package:campusconnect/app/pages/home/view/page_one.dart';
import 'package:campusconnect/app/pages/home/view/page_three.dart';
import 'package:campusconnect/app/pages/home/view/page_two.dart';
import 'package:campusconnect/app/provider/refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

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
        const DivPageTwo(),
        const DivPageThree(),
        const DivPageFour()
    ];
    // final List<Widget> tabMultiPageList = [
    //     ChatMiniTab(),
    //     PostMiniTab(),
    //     ExploreMiniTab(),
    //     EventMiniTab()
    // ];

    /////scroll controller mainTab2
    
    // final ScrollController scrollController = ScrollController();
    
    // void initState(BuildContext context) {
    //   final scrollProvider = Provider.of<ScrollProvider2>(context,listen: false);
    //   // carasouelTmer = getTimer();
    //   scrollController.addListener(() {
    //     if (scrollController.position.userScrollDirection ==
    //         ScrollDirection.reverse) {
    //           scrollProvider.change(false);
    //           print("false");
    //     } else {
    //       scrollProvider.change(true);
    //       print("true");
    //     }
    //   });
    // }


























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




    
    final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Cyber Bullying: A case of digital threat",
      // "price": "\$255",
      "venue": "B2-305",
      "images":"https://images.unsplash.com/photo-1505373877841-8d25f7d46678?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1112&q=80"
         },
    {
      "title": "TechXcellence",
      // "price": "\$245",
      "venue": "B2-305",
      "images":
          "https://images.unsplash.com/photo-1540575467063-178a50c2df87?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
    },
    {
      "title": "Dj night and party",
      // "price": "\$155",
      "venue": "B2-305",
      "images":
          "https://images.unsplash.com/photo-1470229538611-16ba8c7ffbd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
    },
    {
      "title": "beat the beat",
      // "price": "\$275",
      "venue": "B2-305",
      "images":
          "https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
    },
    {
      "title": "Running competition,sports",
      // "price": "\$25",
      "venue": "B2-305",
      "images":
          "https://images.unsplash.com/photo-1674574124792-3be232f1957f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
    },
    {
      "title": "Essay writing competition",
      // "price": "\$27",
      "venue": "B2-305",
      "images":
          "https://images.unsplash.com/photo-1503428593586-e225b39bddfe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
    },
    {
      "title": "Traditional skill and design fest",
      // "price": "\$55",
      "venue": "B2-305",
      "images":
          "https://images.unsplash.com/photo-1472653431158-6364773b2a56?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80"
    }
  ];




  final List<String> imageCommunity = [
      'https://img.freepik.com/free-vector/group-logo-template_1071-34.jpg?w=740&t=st=1684660113~exp=1684660713~hmac=3662b8c3c6c16d0fee17ce2de44c0a8aa44e2169f562a76db3ffbc017d57097b',
      'https://img.freepik.com/free-vector/people-shape-logo-design_1025-884.jpg?w=740&t=st=1684660201~exp=1684660801~hmac=c1dc31213049389367389b3f2febf508b3fa7870fca43ca76b33da78ec46b219',
      'https://img.freepik.com/free-vector/gradient-culture-logo-design-template_23-2149878688.jpg?size=626&ext=jpg',
      'https://img.freepik.com/free-vector/community-logo-template_1061-107.jpg?w=740&t=st=1684660272~exp=1684660872~hmac=2e2711c772a07bf914fbcbda2766a3ed7cd26eb96246e3150bc52c8970ec35d2',
      'https://img.freepik.com/free-vector/colorful-charity-logo_1025-388.jpg?size=626&ext=jpg',
      'https://img.freepik.com/free-vector/group-logo-template_1071-34.jpg?w=740&t=st=1684660113~exp=1684660713~hmac=3662b8c3c6c16d0fee17ce2de44c0a8aa44e2169f562a76db3ffbc017d57097b',
      'https://img.freepik.com/free-vector/people-shape-logo-design_1025-884.jpg?w=740&t=st=1684660201~exp=1684660801~hmac=c1dc31213049389367389b3f2febf508b3fa7870fca43ca76b33da78ec46b219',
      'https://img.freepik.com/free-vector/gradient-culture-logo-design-template_23-2149878688.jpg?size=626&ext=jpg',
      'https://img.freepik.com/free-vector/community-logo-template_1061-107.jpg?w=740&t=st=1684660272~exp=1684660872~hmac=2e2711c772a07bf914fbcbda2766a3ed7cd26eb96246e3150bc52c8970ec35d2',
      'https://img.freepik.com/free-vector/colorful-charity-logo_1025-388.jpg?size=626&ext=jpg'
    ];






































    /////////////////________________CHAT_MINI_TAB_____________________________
    ///
    ///
    ///
    ///
    ///
    ///
    ///
    ///
    /// 
    
    final ScrollController scrollController = ScrollController();
  

      @override
        void initState(BuildContext context) {
          final scrollProvider = Provider.of<ScrollProvider>(context,listen: false);
          scrollController.addListener(() {
              if (scrollController.position.userScrollDirection ==
                  ScrollDirection.reverse) {
                    scrollProvider.change(false);
              } else {
                scrollProvider.change(true);
              }
            });
     }

    
}
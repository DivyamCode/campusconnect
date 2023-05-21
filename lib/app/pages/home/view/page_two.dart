import 'package:campusconnect/app/common/function/commonfunction.dart';
import 'package:campusconnect/app/components/text.dart';
import 'package:campusconnect/app/pages/home/view/tab/mini_explore.dart';
import 'package:campusconnect/app/pages/home/view/tab/mini_chat.dart';
import 'package:campusconnect/app/pages/home/view/tab/mini_event.dart';
import 'package:campusconnect/app/pages/home/view/tab/mini_post.dart';
import 'package:campusconnect/app/provider/refresh.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:slide_switcher/slide_switcher.dart';


class DivPageTwo extends StatefulWidget {
  const DivPageTwo({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DivPageTwoState createState() => _DivPageTwoState();
}

class _DivPageTwoState extends State<DivPageTwo> {

    final miniIndex = 0.obs;


    void changeMiniIndex(int index){
      //  bottomIndex.value = index;

       handleIndexChangedMini(index);
    }

    final tabMultiPage = PageController(initialPage: 0);


    final List<Widget> tabMultiPageList = [
        const ChatMiniTab(),
        const PostMiniTab(),
        ExploreMiniTab(),
        const EventMiniTab()
    ];

    final ScrollController _scrollController = ScrollController();
  

      @override
        void initState() {
          final scrollProvider = Provider.of<ScrollProvider>(context,listen: false);
          _scrollController.addListener(() {
              if (_scrollController.position.userScrollDirection ==
                  ScrollDirection.reverse) {
                    scrollProvider.change(false);
              } else {
                scrollProvider.change(true);
              }
            });
            super.initState();
     }

    @override
    void dispose() {
      _scrollController.dispose();
      super.dispose();
    }



    handleIndexChangedMini(int i){
        
        tabMultiPage.animateToPage( i,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeIn,
      );
      miniIndex.value = i;
    }

  final List<int> dx = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,11,1,11,1,1,1,1,1,1];

  int index =0;

  @override
  Widget build(BuildContext context){
    final themeProvider = Provider.of<ThemeProvider>(context);
    // int i =0;
    return Container(
      color:Colors.white54,
      padding:const EdgeInsets.only(left: 15,right: 15,top:23),
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            
              const SizedBox(height: 20,),
              SingleChildScrollView(
                // controller: _scrollController,
                child: Column(
                  children: [
                    SlideSwitcher(
                      onSelect: (index) {
                        handleIndexChangedMini(index);
                        
                      },
                      containerHeight:50,
                      containerWight: CommonFunctions.screenWidth(context)-30,
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
                    SizedBox(//height: CommonFunctions.screenHeight(context)-364,
                      height: CommonFunctions.screenHeight(context)-160,//384,//184
                      child: PageView(
                        controller:tabMultiPage,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                            tabMultiPageList.length, (index) =>  tabMultiPageList[index]),
                      ),
                    ), 
                  ],
                ),
              ),
        ],),
      ),
    );
  }
}

class CommunityScroll extends StatelessWidget {
  const CommunityScroll({
    super.key,
    required this.themeProvider,
    required this.index,
    required this.url
  });

  final ThemeProvider themeProvider;
  final int index;
  final String url;

  @override
  Widget build(BuildContext context) {
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
            decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 165, 125, 139)),borderRadius: BorderRadius.circular(50)),
            height: 45,
            width: 45,
            child:ClipOval(
              child: Image.network(url,errorBuilder: (context, error, stackTrace) =>const CircleAvatar(),loadingBuilder: (context, child, loadingProgress){
                 if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
              },),
            ),
          ),
          const SizedBox(height:10,),
          TextWidget(color:themeProvider.getPrimaryColor, size:10, text:"Community $index", weight:FontWeight.w500),
        ],
      ),
    );
  }
}
import 'package:campusconnect/app/components/post_card.dart';
import 'package:campusconnect/app/provider/refresh.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class DivPageOne extends StatefulWidget {
  const DivPageOne({super.key});

  @override
  State<DivPageOne> createState() => _DivPageOneState();
}

class _DivPageOneState extends State<DivPageOne> {

  final List<String> imgUrl = [
    'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1540575467063-178a50c2df87?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'
  ];

  final ScrollController _scrollController = ScrollController();
  

    @override
  void initState() {
    final scrollProvider = Provider.of<ScrollProvider>(context,listen: false);

    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
            scrollProvider.change(false);
        // showBtmAppBr = false;
        // setState(() {});
      } else {
        scrollProvider.change(true);
        // showBtmAppBr = true;

        // setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    final themeProvider = Provider.of<ThemeProvider>(context);

     final calculator = Calculator(add: Add(a:5, b:10));
     calculator.calculate();
    return Scaffold(
      backgroundColor: themeProvider.getbackgroundcolor,
      body: SafeArea(
        child: Container(
          color: const Color(0xFFFFFFFF),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                postTypeWidget(),
                PostCard(url: imgUrl[0],),
                PostCard(url: imgUrl[1],),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container postTypeWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 11.0),
      padding: const EdgeInsets.fromLTRB(16, 8, 221, 8),
      color: const Color(0xFFF8F8F8),
      child: Row(children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFB9F0D5),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xFF81B29A)),
            ),
            padding: const EdgeInsets.fromLTRB(2, 4, 5, 4),
            child: Row(
              children: const [
                Icon(CupertinoIcons.arrow_right_arrow_left_circle_fill),
                SizedBox(width: 4),
                Text(
                  "All communities",
                  style: TextStyle(
                    fontFamily: 'Roboto-Medium',
                    fontSize: 11.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF131313),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

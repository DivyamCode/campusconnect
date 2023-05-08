import 'package:campusconnect/app/components/post_card.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DivPageOne extends StatefulWidget {
  const DivPageOne({super.key});

  @override
  State<DivPageOne> createState() => _DivPageOneState();
}

class _DivPageOneState extends State<DivPageOne> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.getbackgroundcolor,
      body: SafeArea(
        child: Container(
          color: const Color(0xFFFFFFFF),
          child: SingleChildScrollView(
            child: Column(
              children: [
                postTypeWidget(),
                PostCard(),
                PostCard(),
                
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
      child: Row(
        children: [
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

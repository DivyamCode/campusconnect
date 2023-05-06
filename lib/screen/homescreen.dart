import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.getbackgroundcolor,
      body: SafeArea(
        child: Container(
          color: Color(0xFFFFFFFF),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(16, 8, 221, 8),
                color: Color(0xFFF8F8F8),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFB9F0D5),
                        borderRadius: BorderRadius.circular(38),
                        border: Border.all(color: Color(0xFF81B29A)),
                      ),
                      padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
                      child: Row(
                        children: [
                          Icon(Icons.circle),
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
              ),
              Container(
                height: 54.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 9, 70, 9),
                      child: Row(
                        children: [
                          Icon(Icons.circle),
                          SizedBox(width: 12),
                          Text("Dhairya"),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: 14.5, right: 20.0, bottom: 14.5),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(59),
                              border: Border.all(color: Color(0xFFD2D2D2)),
                            ),
                            padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                            child: Text(
                              "Web development",
                            ),
                          ),
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Image(image: AssetImage("images/Screenshot.png")),
              Container(
                margin: EdgeInsets.only(top: 12),
                padding: const EdgeInsets.only(left: 17, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Live webinar on blockchain technology",
                      style: TextStyle(
                        fontFamily: 'Roboto-Medium',
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF131313),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "We are excited to announce the official webinar with Jetso Analin on Blockchain technology.",
                      style: TextStyle(
                        fontFamily: 'Roboto-Medium',
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF131313),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 8, 164, 8),
                      margin: EdgeInsets.only(top: 12),
                      child: Row(children: [
                        Row(
                          children: [
                            Text("28"),
                            SizedBox(width: 4),
                            Text("Likes"),
                          ],
                        ),
                        SizedBox(width: 24),
                        Row(children: [
                          Text("12"),
                          SizedBox(width: 4),
                          Text("Comments"),
                        ]),
                      ]),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 48, right: 48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.thumb_up),
                    Icon(Icons.mode_comment),
                    Icon(Icons.share),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

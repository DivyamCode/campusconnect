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
          child: Column(
            children: [
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
                      padding: EdgeInsets.only(top: 14.5,right: 20.0,bottom: 14.5),
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
            ],
          ),
        ),
      ),
    );
  }
}
import 'dart:async';
import 'dart:io';

import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppOpen extends StatefulWidget {
  @override
  State<AppOpen> createState() => _AppOpenState();
}

class _AppOpenState extends State<AppOpen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushNamed("Welcome");
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: const Image(
          image: AssetImage("images/campus.png"),
        ),
      ),
    );
  }
}

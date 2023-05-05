
import 'dart:async';
import 'dart:io';
import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';


class dhairya extends StatefulWidget {
  const dhairya({super.key});
  

  @override
  State<dhairya> createState() => _dhairyaState();
}

class _dhairyaState extends State<dhairya> {
  @override
  void initState() {
     Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushNamed("sign");
    });
    // TODO: implement initState
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Material(
      child: Stack(
        // <-- STACK AS THE SCAFFOLD PARENT
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/next.png"), // <-- BACKGROUND IMAGE
                fit: BoxFit.cover,
              ),
            ),
          ),
           Container(
            padding:EdgeInsets.only(top: 500),
             child: Column(
              children: [Text(
              "Welcome to destiny",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
                   ),
                   Text(
              "You will lots of things here",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
                   ),
                   Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: themeprovider.getTextColor,
              // color: Colors.green.shade400,
              //border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              "Get Started",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
          ),],
             ),
           )
          
        ],
        // ),
        // ),
      ),
    );
  }
}

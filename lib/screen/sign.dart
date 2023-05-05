import 'dart:async';
import 'dart:io';
import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class harshit extends StatefulWidget {
  const harshit({super.key});

  @override
  State<harshit> createState() => _harshitState();
}

class _harshitState extends State<harshit> {
  void initState() {
     Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushNamed("signin");
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Material(
      
      child: Stack(children: [
        Container(
          // padding: EdgeInsets.only(top:),
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("images/check.png"),
          //     fit: BoxFit.cover,
          //   ),
            
          // ),
          child:Column(
            children: [
              Image.asset("images/check.png",width: MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.width ,),
            ],
          )
        ),
        Container(
            
            padding: EdgeInsets.only(top: 450,left: 50,right: 20,bottom: 30),
            child: Column(
              children: [
                
                Text(
                  
                  "Your id has been verfied",
                  style: TextStyle(
                    color: themeprovider.getSecondaryColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Wohho! you all are set to connect with amazing people in your campus",
                  style: TextStyle(
                    color:themeprovider.getSecondaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: themeprovider.getTypeColor,
                    // color: themeProvoder.getPrimaryColor,
                    // color: Colors.green.shade400,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Track Order",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Text(
                  "Back to home",
                  style: TextStyle(
                    color:themeprovider.getSecondaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ))
      ]),
    );
  }
}

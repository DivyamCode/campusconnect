import 'dart:async';
import 'dart:io';
import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
class post extends StatefulWidget {
  const post({super.key});

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
 void initState() {
     Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushNamed("post");
    });
    // TODO: implement initState
    super.initState();
  } 
  
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a post'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:50, horizontal: 30),
        child: Container(
        //   color: Colors.white,
        //   child: const Image(
        //   image: AssetImage("images/campus.png"),
        // ),
          
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50.0),
                  // const SizedBox(height: 5.0),
                   Text(
                    "Posting in",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      color: themeprovider.getSecondaryColor,
                    ),
                  ),
                
                  TextField(
                  // controller: usernameController,
                  decoration: InputDecoration(
                    labelText: "IEEE registration begin",
                  ),
                ),
                
            Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 20, bottom:25),
                  decoration: BoxDecoration(
                    color: themeprovider.getTextColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      color: themeprovider.getSecondaryColor,
                    ),
                  ),
                ),
                ],
        

        ),
        
        
      ),
      
      ),
      
    );
  }
}
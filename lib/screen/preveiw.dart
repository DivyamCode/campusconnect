import 'dart:async';
import 'dart:io';
import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
class preveiw extends StatefulWidget {
  const preveiw({super.key});

  @override
  State<preveiw> createState() => _preveiwState();
}

class _preveiwState extends State<preveiw> {
  
  
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preveiw'),
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
                    "Post",
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
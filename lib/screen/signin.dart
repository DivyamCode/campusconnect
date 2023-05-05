import 'dart:async';
import 'dart:io';
import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class aman extends StatefulWidget {
 
const aman({super.key});
  @override
  State<aman> createState() => _amanState();
}

class _amanState extends State<aman> {
   void initState() {
     Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushNamed("grid");
    });
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CampusConnect.com'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 25.0),
                  Text(
                  "Enter your roll number to sign in",
                  style: TextStyle(
                    color: themeprovider.getSecondaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  const SizedBox(height: 10.0),
                TextField(
                  // controller: usernameController,
                  decoration: InputDecoration(
                    labelText: "Roll no",
                  ),
                ),
                  const SizedBox(height: 10.0),
                TextField(
                  // controller: usernameController,
                  decoration: InputDecoration(
                    labelText: "Password:",
                  ),
                ),
                const SizedBox(height: 20.0),
                  Text(
                  "Or connect with social media",
                  style: TextStyle(
                    color: themeprovider.getSecondaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Card(
                // margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                // child: ListTile(
                //   leading: Icon(
                //     Icons.Falcon(FontAwesomeIcons.gamepad),
                //     ),
                //     color:themeprovider.getchildcolor,
                    
                //     color: Colors.teal,

                //   ),
                //   title: Text(
                //   'Continue with Google',
                //     style: TextStyle(
                //       color:themeprovider.gettitlecolor,
                //       color: Colors.teal.shade900,
                //       fontFamily: 'Source Sans Pro',
                //       fontSize: 15.0,
                //     ),
                //   ),
                // ),
                
                Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.facebook,
                    color:themeprovider.getchildcolor,
                    
                    // color: Colors.teal,

                  ),
                  title: Text(
                  'Continue with Facebook',
                    style: TextStyle(
                      color:themeprovider.gettitlecolor,
                      // color: Colors.teal.shade900,
                      // fontFamily: 'Source Sans Pro',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Scaffold(
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
                  const SizedBox(height: 20.0),
                  Text(
                  "Enter your roll number to sign in",
                  style: TextStyle(
                    color: themeprovider.getSecondaryColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  const Text(
                    "Roll no.",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black26,
                    ),
                  ),
                  const Text(
                    "Pass:",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black26,
                    ),
                  ),
                  Text(
                  "Or connect with social media",
                  style: TextStyle(
                    color: themeprovider.getSecondaryColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  // leading: Icon(
                  //   Icons.google,
                  //   color:themeprovider.getchildcolor,
                  //   // color: Colors.teal,
                    
                  // ),
                  title: Text(
                    'Continue with Google',
                    style: TextStyle(
                      color:themeprovider.gettitlecolor,
                      // color: Colors.teal.shade900,
                      // fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
                ),
                Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
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
                      fontSize: 20.0,
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

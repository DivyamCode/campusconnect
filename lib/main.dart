import 'package:campusconnect/screen/Welcome.dart';
import 'package:campusconnect/screen/onboarding.dart';
import 'package:campusconnect/screen/rollno.dart';
import 'package:campusconnect/screen/sign.dart';
import 'package:campusconnect/screen/signup.dart';
import 'package:campusconnect/screen/signin.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//  import 'package:screen/screen.dart';
import 'package:campusconnect/provider/themeprovider.dart';

import 'screen/textPost.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the m, root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Divyam(),
        routes: {
          "AppOpenroute": (context) => AppOpen(),
          "Welcome": (context) => dhairya(),
          "sign": (context) => harshit(),
          "signup": (context) => Signup(),
          "TextPost": (context) => TextPost(),
          "rollno": (context) => Rollno(),
        },
      ),
    );
  }
}

class Divyam extends StatefulWidget {
  const Divyam({Key? key}) : super(key: key);

  @override
  _DivyamState createState() => _DivyamState();
}

class _DivyamState extends State<Divyam> {
  @override
  Widget build(BuildContext context) {
    final themeProvoder = Provider.of<ThemeProvider>(context);
    themeProvoder.init();

    return Material(
      child: Center(
        child: SafeArea(
          child: Column(
            children: [
              InkWell(
                child: Text("AppOpen"),
                onTap: () {
                  Navigator.pushNamed(context, "AppOpenroute");
                },
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("signup");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: themeProvoder.getPrimaryColor,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("Signup"),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("TextPost");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: themeProvoder.getPrimaryColor,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text("TextPost"),
                ),
              ),
            ],
          ),
        ),
      ),
      color: themeProvoder.getPrimaryColor,
      
    );
  }
}

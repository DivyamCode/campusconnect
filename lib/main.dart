<<<<<<< HEAD
import 'package:campusconnect/screen/Welcome.dart';
import 'package:campusconnect/screen/onboarding.dart';
import 'package:campusconnect/screen/sign.dart';
=======
import 'package:campusconnect/screen/rollno.dart';
import 'package:campusconnect/screen/signup.dart';
>>>>>>> 7bf7ee89348ee9e12e59b28e010c989ef1c373de
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:screen/screen.dart';
import 'package:campusconnect/provider/themeprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: MaterialApp(
<<<<<<< HEAD
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Divyam(),
        routes: {"AppOpenroute": (context) => AppOpen(),
          "Welcome":(context) => dhairya(),
          "sign":(context)=> harshit(),
        },
      ),
=======
        debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Divyam(),
          routes: {
            "signup":(context) => Signup(),
            "rollno":(context) => Rollno(),
          },
          ),
>>>>>>> 7bf7ee89348ee9e12e59b28e010c989ef1c373de
    );
  }
}

<<<<<<< HEAD
=======


>>>>>>> 7bf7ee89348ee9e12e59b28e010c989ef1c373de
class Divyam extends StatefulWidget {
  const Divyam({Key? key}) : super(key: key);

  @override
  _DivyamState createState() => _DivyamState();
}

class _DivyamState extends State<Divyam> {
  @override
  Widget build(BuildContext context) {
    final themeProvoder = Provider.of<ThemeProvider>(context);

    return Material(
<<<<<<< HEAD
      child: Center(
          child: InkWell(
        child: Text("AppOpen"),
        onTap: () {
          Navigator.pushNamed(context, "AppOpenroute");
        },
      ),
      ),
      color: themeProvoder.getPrimaryColor,
=======
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [InkWell(
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
          )],
        ),
        // color: themeProvoder.getPrimaryColor,
      ),
>>>>>>> 7bf7ee89348ee9e12e59b28e010c989ef1c373de
    );
  }
}


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
        ChangeNotifierProvider(create: (context) =>ThemeProvider(),),
      ],
        child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Divyam()
      ),
    );
  
  }
}

// harshit bsdwalaa


/// Dhaniya chuutiya hai  
/// /// Dhaniya chuutiya hai  
/// /// Dhaniya chuutiya hai  
/// /// Dhaniya chuutiya hai  
/// /// Dhaniya chuutiya hai  
/// /// Dhaniya chuutiya hai  
/// Dhaniya chuutiya hai



class Divyam extends StatefulWidget {
  const Divyam({ Key? key }) : super(key: key);

  @override
  _DivyamState createState() => _DivyamState();
}

class _DivyamState extends State<Divyam> {
  @override
  Widget build(BuildContext context) {

    final themeProvoder = Provider.of<ThemeProvider>(context);


    return Container(
       color: themeProvoder.getPrimaryColor,
    );
  }
}

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
        // home: const ,
      ),
    );
  
  }
}



/// Dhaniya chuutiya hai  
/// /// Dhaniya chuutiya hai  
/// /// Dhaniya chuutiya hai  
/// /// Dhaniya chuutiya hai  
/// /// Dhaniya chuutiya hai  
/// /// Dhaniya chuutiya hai  
/// Dhaniya chuutiya hai  



class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {

    final themeProvoder = Provider.of<ThemeProvider>(context);


    return Container(
       color: themeProvoder.getPrimaryColor,
    );
  }
}

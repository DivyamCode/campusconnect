import 'dart:async';
import 'dart:io';
import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  //  final themeprovider = Provider.of<ThemeProvider>(context);
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('CampusConnect.com'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        //   color: Colors.white,
        //   child: const Image(
        //   image: AssetImage("images/campus.png"),
        // ),
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
               child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 25.0),
                  Text(
                  "Shri Ramswaroop Memorial University",
                  style: TextStyle(
                    color:Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          
         TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search Product',
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () => _searchController.clear(),
              ),
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          //  Text(
          //         "EXPLORE MORE HERE",
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 35,
          //           backgroundColor: Colors.yellow[50],
          //           fontWeight:FontWeight.bold,
                    
              
          //         ),
          //       ), 
           
               Text(
                  "In Demand",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight:FontWeight.normal,
                  ),
                ), 
                
                       
          ],
        ),
        
      ),
      ),
      
    );
  }
}
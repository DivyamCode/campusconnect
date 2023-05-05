import 'dart:async';
import 'dart:io';
import 'package:campusconnect/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class game extends StatefulWidget {
  const game({super.key});

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {

    @override
    Widget build(BuildContext context) {
     final TextEditingController _searchController = TextEditingController(); 
      return Scaffold(
        appBar: AppBar(
          title: const Text('Choose  a comnmunity'),
        ),
        
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Accounting"),
                      Text("kjfkalj  kdjfa  kafjl kdssdf"),
                    ],                  
                  ),
                ),
                Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                      onTap: () {
                        //
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          // color: themeProvoder.getPrimaryColor,
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text("Join and Select"),
                      ),
                              ),
                    ],
                  ),
                ),
              ],
              
            ),
            
        ),
        ),

      );
    }
  }
// body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             // padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Row(
//               // crossAxisAlignment: CrossAxisAlignment.start,
//               // mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 25.0),
//                 TextField(
//                   controller: _searchController,
//                   decoration: InputDecoration(
//                     hintText: 'Search any community',
//                     suffixIcon: IconButton(
//                       icon: Icon(Icons.clear),
//                       onPressed: () => _searchController.clear(),
//                     ),
//                     prefixIcon: IconButton(
//                       icon: Icon(Icons.search),
//                       onPressed: () {},
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//           ),
          
//         ),

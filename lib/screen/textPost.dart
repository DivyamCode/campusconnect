
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../provider/themeprovider.dart';
import '../widget/button.dart';
import 'afef.dart';


class TextPost extends StatefulWidget {
  const TextPost({super.key});

  @override
  State<TextPost> createState() => _TextPostState();
}

class _TextPostState extends State<TextPost> {
  final items = ["Text", "Image"];
  String? value;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Material(
      // backgroundColor: themeProvider.getbackgroundcolor,
      // appBar: AppBar(
      //   leading: Icon(
      //     Icons.arrow_back,
      //     color: Colors.black87,
      //     weight: 10.0,
      //   ),
      //   title: const Text(
      //     "Create a post",
      //     style: TextStyle(
      //       fontFamily: 'Roboto-Medium',
      //       color: Color(0xFF262626),
      //       fontSize: 13.0,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      //   backgroundColor: Color(0xFFF5F5F5),
      // ),
       child: SafeArea(
        child: Container(
          // padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                children: [

                 Container( 
                   padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                    child: Row(
                      children: [
                        InkWell(onTap: () => Get.back(), child: Icon(Icons.arrow_back_ios_outlined,size: 13,)),
                        SizedBox(width: 11,),
                        TextWidget(color:themeProvider.getSecondaryColor , size:13, text:"Create post", weight:FontWeight.w500 ),
                        
                      ],
                    ),
                 ),
                 Divider(thickness: 2,color: Colors.green,),



                  Container(
                    margin: EdgeInsets.only(top: 23.5),
                    // padding: EdgeInsets.all(8),
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Text(
                          "Posting in",
                          style: TextStyle(
                            fontFamily: 'Roboto-Medium',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0,
                            color: Color(0xFF262626),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(10, 210, 210, 1),
                            borderRadius: BorderRadius.circular(38),
                            border: Border.all(color: Color(0xFFD2D2D2)),
                          ),
                          padding: EdgeInsets.fromLTRB(12,6,12,6),
                          child: Row(
                            children: const [
                              Text(
                                "Select community",
                                style: TextStyle(
                                  fontFamily: 'Roboto-Medium',
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              InkWell(
                                child: Icon(Icons.keyboard_arrow_down),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    margin: EdgeInsets.only(top: 32),
                    child: Column(
                      children: const [
                        TextField(
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            hintText: 'Write your post title',
                            hintStyle: TextStyle(fontFamily: 'Roboto-Medium'),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Write your content',
                            hintStyle: TextStyle(fontFamily: 'Roboto-Medium'),
                          ),
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10,bottom: 10,left: 11,right: 17),
                    margin: EdgeInsets.only(left: 16, right: 16,bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xFFBCBCBC)),
                    ),
                    // margin: EdgeInsets.only(,
                    // padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.format_align_left),
                            Text(
                              "Text",
                              style: TextStyle(
                                fontFamily: 'Roboto-Medium',
                                fontWeight: FontWeight.w400,
                                fontSize: 13.0,
                                color: Color(0xFF131313),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          child: Icon(Icons.keyboard_arrow_up),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        PrimaryButton(
                          function: () {
                            // Navigator.of(context).pushNamed("rollno");
                          },
                          labelText: "Continue",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
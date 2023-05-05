import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widget/button.dart';

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
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black87,
          weight: 10.0,
        ),
        title: const Text(
          "Create a post",
          style: TextStyle(
            fontFamily: 'Roboto-Medium',
            color: Color(0xFF262626),
            fontSize: 13.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Color(0xFFF5F5F5),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 23.5),
                    padding: EdgeInsets.all(8),
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
                        Row(
                          children: [
                            Text(
                              "Select community",
                              style: TextStyle(
                                fontFamily: 'Roboto-Medium',
                                fontSize: 11.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            InkWell(
                              child: Icon(Icons.keyboard_arrow_down),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),




              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //content area

                  Container(
                    margin: EdgeInsets.only(top: 32),
                    child: Column(
                      children: [
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

                  //text and continue button

                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xFFBCBCBC)),
                        ),
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
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
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
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





















//content area






//text and continue button


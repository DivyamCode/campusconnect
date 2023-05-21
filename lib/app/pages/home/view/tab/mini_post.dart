import 'package:campusconnect/app/components/button.dart';
import 'package:campusconnect/app/components/text.dart';
import 'package:campusconnect/app/provider/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostMiniTab extends StatefulWidget {
  const PostMiniTab({super.key});

  @override
  State<PostMiniTab> createState() => _PostMiniTabState();
}

class _PostMiniTabState extends State<PostMiniTab> {
  final items = ["Text", "Image"];
  String? value;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(color:themeProvider.getPrimaryColor , size:13, text:"Create post", weight:FontWeight.w500 ),
                    Container( 
                      padding: const EdgeInsets.symmetric(horizontal:10,vertical: 5),
                      decoration: BoxDecoration(  
                        border: Border.all(color: themeProvider.getPrimaryColor.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: TextWidget(color:themeProvider.getPrimaryColor , size:13, text:"Draft", weight:FontWeight.w500 )),   
                    ],
                  ),
              ),
              Divider(thickness:1,color:themeProvider.getPrimaryColor.withOpacity(0.5)),
            
            
              const SizedBox(height: 23,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Posting in",
                    style: TextStyle(
                      fontFamily: 'Roboto-Medium',
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0,
                      color: Color(0xFF262626),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(10, 210, 210, 1),
                      borderRadius: BorderRadius.circular(38),
                      border: Border.all(color: const Color(0xFFD2D2D2)),
                    ),
                    padding: const EdgeInsets.fromLTRB(12,6,12,6),
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
              
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                margin: const EdgeInsets.only(top: 32),
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
                padding: const EdgeInsets.only(top: 10,bottom: 10,left: 11,right: 17),
                margin: const EdgeInsets.only(left:10, right:10,bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFFBCBCBC)),
                ),
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
                    const InkWell(
                      child: Icon(Icons.keyboard_arrow_up),
                    ),
                  ],
                ),
              ),
              PrimaryButton(
                function: () {},
                labelText: "Continue",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

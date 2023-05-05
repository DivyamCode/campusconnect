import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  FontWeight weight;
  double? wordspacing;
  double size;
  Color color;
  String? fontStyleName;
  TextAlign? align;
  double? lineHeight;

  TextWidget({super.key, 
    required this.color,
    required this.size,
    required this.text,
    required this.weight,
    this.wordspacing,
    this.fontStyleName,
    this.align,
    this.lineHeight
  });

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      textAlign:align ,
      style: TextStyle(
        fontWeight:weight,
        height: lineHeight,
        fontSize: size,
        wordSpacing:wordspacing,
        color:color,
        fontFamily:fontStyleName ?? FontName.poppin
      )
    );
  }
}

class FontName {
   static const poppin = "Poppins";
}
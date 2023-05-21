
import 'package:campusconnect/app/components/text.dart';
import 'package:flutter/material.dart';

class Buttons {
  final String buttonName;
  final Color buttonColor , textColor;
  final double height , width;

  Buttons(this.buttonName, this.buttonColor, this.textColor, this.width , this.height);

  Widget getButton(){
    return  Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: buttonColor
        ),
        child: Center(
          child: Text(buttonName, style: TextStyle(
              fontSize: 16,
              color: textColor
          ), textAlign: TextAlign.center,),
        ),
      );
  }

}

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  Function function;
  String labelText;
  Color? background;
  PrimaryButton({
    super.key,required this.function,
    required this.labelText,
    this.background
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:background ?? const Color.fromARGB(255, 97, 151, 100),
          // border: Border.all(),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextWidget(color:Colors.white, size:20, text:labelText, weight:FontWeight.w500)

    ));
  }
}


class SecondaryButton extends StatelessWidget {
  Function function;
  String labelText;
  Color? background;
  double? textSize;
  double? radius;
  SecondaryButton({
    super.key,required this.function,
    required this.labelText,
    this.background,
    this.textSize,
    this.radius
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:background ?? const Color.fromARGB(255, 97, 151, 100),
          // border: Border.all(),
          borderRadius: BorderRadius.circular(radius??15),
        ),
        child: TextWidget(color:Colors.white, size:textSize?? 20, text:labelText, weight:FontWeight.w500)

    ));
  }
}
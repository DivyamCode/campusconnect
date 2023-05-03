
import 'package:flutter/material.dart';

class Buttons {
  final String buttonName;
  final Color buttonColor , textColor;
  final double height , width;

  Buttons(this.buttonName, this.buttonColor, this.textColor, this.width , this.height);

  Widget get_button(){
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
  PrimaryButton({
    super.key,required this.function,
    required this.labelText,
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
        // color: ThemeProvider.getPrimaryColor,
        color: Colors.green.shade400,
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        labelText,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black87,
        ),
        ),
      ),
    );
  }
}
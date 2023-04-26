import 'package:flutter/material.dart';

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
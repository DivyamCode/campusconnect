import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {

    int get getColorIndex => 1;


    

    List<Color> primaryColor = [Colors.blue,Colors.green];


    Color get getPrimaryColor => primaryColor[getColorIndex];


}
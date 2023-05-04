import 'package:campusconnect/app/theme/color.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {

    int get getColorIndex =>  0  ;

    AppColor color =  AppColor() ;

    Color get getPrimaryColor => color.primaryColor[getColorIndex];
    Color get getSecondaryColor => color.secondaryColor[getColorIndex];
    Color get getTextColor => color.textcolor[getColorIndex];
    Color get getTypeColor => color.typecolor[getColorIndex];
    Color get getchildcolor => color.childcolor[getColorIndex];
    Color get gettitlecolor => color.titlecolor[getColorIndex];
    Color get getlabelInputColor =>color.labelInputGrey[getColorIndex];


}
import 'package:campusconnect/app/theme/color.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {

    CustomThememode _themeMode = CustomThememode.light;

  // int _index = 0;
  int getColorIndex() {
    if (_themeMode == CustomThememode.light) {
      return 0;
    } else {
      return 1;
    }
  }

  void init() {}


    AppColor color =  AppColor() ;

    Color get getPrimaryColor => color.primaryColor[getColorIndex()];
    Color get getSecondaryColor => color.secondaryColor[getColorIndex()];
    Color get getTextColor => color.textcolor[getColorIndex()];
    Color get getTypeColor => color.typecolor[getColorIndex()];
    Color get getchildcolor => color.childcolor[getColorIndex()];
    Color get gettitlecolor => color.titlecolor[getColorIndex()];
    Color get getlabelInputColor =>color.labelInputGrey[getColorIndex()];
    Color get geticoncolor => color.iconcolor[getColorIndex()];
    Color get getbackgroundcolor => color.backgroundcolor[getColorIndex()];
    Color get getAlertColor => color.alertColor[getColorIndex()];
    Color get getNavBarGreen => color.navBarGreen[getColorIndex()];
    Color get getDPrimary => color.dPrimary[getColorIndex()];


}





enum CustomThememode { light, dark }
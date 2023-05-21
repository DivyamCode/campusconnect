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
    Color get getDGrey => color.dgrey[getColorIndex()];
    Color get getDividerColor => color.dividerColor[getColorIndex()];
    Color get getButtonColor2 => color.buttonColor2[getColorIndex()];

    


     final List<LinearGradient> _listTileGradient = [
     const LinearGradient(colors:[Color.fromRGBO(131, 67, 128, 1),Color.fromRGBO(110, 115, 186, 1),Color.fromRGBO(88, 147, 211, 1)])
   ];
   final List<LinearGradient> _navBarGradient = [
     const LinearGradient(colors: [Color.fromRGBO(253, 155, 163, 1),Color.fromRGBO(251, 208, 209, 1), Color.fromARGB(255, 247, 228, 223)])
   ];
   final List<LinearGradient> _lockScreenGradient = [
     const LinearGradient(colors: [Color.fromRGBO(127, 190, 167, 1),Color.fromRGBO(191, 222, 214, 1), Color.fromRGBO(130, 203, 176, 1)])
   ];
   final List<LinearGradient> _scoreCardGradient = [const LinearGradient(colors:[Color.fromRGBO(255, 124, 82, 1),Color.fromRGBO(195, 78, 127, 1),Color.fromRGBO(26, 26, 72, 1)])];
   final List<LinearGradient> _scoreCardGradient2 = [const LinearGradient(colors:[Color.fromRGBO(249, 128, 87, 1),Color.fromRGBO(194, 83, 129, 1),Color.fromRGBO(28, 28, 72, 1)])];

  final List<LinearGradient> _premiumTokenCard = [
     const LinearGradient(colors:[Color.fromRGBO(0, 78, 44, 1),Color.fromRGBO(138, 255, 205, 1)])
   ];//Color.fromRGBO(132, 18, 232, 1)

   final List<LinearGradient> _subscriptionCard = [
     const LinearGradient(colors:[Color.fromRGBO(121, 95, 144, 1),Color.fromRGBO(207, 84, 226, 1), ]) //Color.fromRGBO(38, 85, 65, 1)   ///--Color.fromRGBO(143, 101, 144, 1),Color.fromRGBO(220, 172, 156, 1), 
   ];//


    LinearGradient get getListTileGradient => _listTileGradient[getColorIndex()];
    LinearGradient get getNavBarGradient => _navBarGradient[getColorIndex()];
    LinearGradient get getLockScreenGradient => _lockScreenGradient[getColorIndex()];
    LinearGradient get getPremiumTokenCardGradient => _premiumTokenCard[getColorIndex()];
    LinearGradient get getSubscriptionLinearGradient => _subscriptionCard[getColorIndex()];
    LinearGradient get getScoreCardGradient => _scoreCardGradient[getColorIndex()];
    LinearGradient get getScoreCardGradient2 => _scoreCardGradient2[getColorIndex()];


}





enum CustomThememode { light, dark }
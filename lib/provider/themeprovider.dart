import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  int get getColorIndex => 0;

  List<Color> _primaryColor = [Colors.blue, Colors.green];
  List<Color> _secondaryColor = [Colors.black, Colors.white];
  List<Color> _textcolor = [Colors.green.shade400, Colors.green];
  List<Color> _typecolor = [Colors.green.shade400, Colors.green];
  
  

  Color get getPrimaryColor => _primaryColor[getColorIndex];
  Color get getSecondaryColor => _secondaryColor[getColorIndex];
  Color get getTextColor => _textcolor[getColorIndex];
  Color get getTypeColor => _typecolor[getColorIndex];
}

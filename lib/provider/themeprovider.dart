import 'package:campusconnect/shared.dart';
import 'package:flutter/material.dart';

enum CustomThememode { light, dark }

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

  List<Color> _primaryColor = [Colors.blue, Colors.green];
  List<Color> _secondaryColor = [Colors.black, Colors.white];
  List<Color> _textcolor = [Colors.green.shade400, Colors.green];
  List<Color> _typecolor = [Colors.green.shade400, Colors.green];
  List<Color> _childcolor = [Colors.white, Colors.white];
  List<Color> _titlecolor = [Colors.blue, Colors.blue];
  List<Color> _backgroundcolor = [Colors.white, Colors.black];

  Color get getPrimaryColor => _primaryColor[getColorIndex()];
  Color get getSecondaryColor => _secondaryColor[getColorIndex()];
  Color get getTextColor => _textcolor[getColorIndex()];
  Color get getTypeColor => _typecolor[getColorIndex()];
  Color get getchildcolor => _childcolor[getColorIndex()];
  Color get gettitlecolor => _titlecolor[getColorIndex()];
  Color get getbackgroundcolor => _backgroundcolor[getColorIndex()];

  Future<void> changeTheme(CustomThememode thememode) async {
    SharedPreference pref = SharedPreference();
    await pref.setString(data: '${thememode}', key: 'thememode');
    _themeMode = thememode;
    notifyListeners();
  }

  void init() async {
    SharedPreference pref = SharedPreference();

    final valTheme = await pref.getString(key: 'thememode');
    if (valTheme == null || valTheme == "${CustomThememode.light}") {
      _themeMode = CustomThememode.light;
      pref.setString(data: '${CustomThememode.light}', key: 'thememode');
    } else {
      _themeMode = CustomThememode.dark;
    }

    notifyListeners();

  }
}

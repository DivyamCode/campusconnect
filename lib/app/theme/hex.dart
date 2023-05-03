import 'dart:ui';

class Hexcolor extends Color{
  static int _getcolorfrom_Hex(String value){
    value = value.toUpperCase().replaceAll("#", "");
    if(value.length == 6){
      value = "FF$value";
    }
    return int.parse(value , radix: 16);
  }
  Hexcolor(final String value) : super(_getcolorfrom_Hex(value));
}
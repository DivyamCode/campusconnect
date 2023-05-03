import 'package:flutter/material.dart';

class RefreshProvider with ChangeNotifier {
   void refresh(){
      notifyListeners();
   }
}
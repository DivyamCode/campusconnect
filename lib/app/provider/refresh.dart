import 'package:flutter/material.dart';

class RefreshProvider with ChangeNotifier {
   void refresh(){
      notifyListeners();
   }
}



class ScrollProvider with ChangeNotifier {
   bool _showBottom = true;

   bool get showBottom => _showBottom;

   void change(bool val){
      _showBottom = val;
      notifyListeners();
   }
}
class ScrollProvider2 with ChangeNotifier {
   bool _showBottom = true;

   bool get showBottom => _showBottom;

   void change(bool val){
      _showBottom = val;
      notifyListeners();
   }
}
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
   // Obtain shared preferences.
      SharedPreferences? _prefs;//= await SharedPreferences.getInstance();

      init()async{
        _prefs = await SharedPreferences.getInstance();
      }

      Future<void> setString({required String data,required String key})async{
         await init();
         await _prefs!.setString('counter',data);
      }

      Future<String?> getString({required String key})async{
         await init();
         return await _prefs!.getString(key);
      }





      // Save an integer value to 'counter' key.
      
      // Save an boolean value to 'repeat' key.
      // await prefs.setBool('repeat', true);
      // // Save an double value to 'decimal' key.
      // await prefs.setDouble('decimal', 1.5);
      // // Save an String value to 'action' key.
      // await prefs.setString('action', 'Start');
      // // Save an list of strings to 'items' key.
      // await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);
}
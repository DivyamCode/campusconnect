
// Obtain shared preferences.
import 'package:shared_preferences/shared_preferences.dart';

class SharedKeyPair {
     SharedPreferences? _prefs;
     

     void remove(String key)async{
      await _setShared();
       _prefs!.remove(key);
     }

     Future<void> _setShared()async {
        _prefs = await SharedPreferences.getInstance();
     }

     setBool(String key,bool data)async {
       await _setShared();
       await _prefs!.setBool(key,data);
     }
     setInt(String key,int value)async{
       await _setShared();
       await _prefs!.setInt(key, value);
     }

     setString(String key,String value)async{
       await _setShared();
       await _prefs!.setString(key, value);
     }
     Future<int?> getInt(String key)async{
        await _setShared();
       return _prefs!.getInt(key);
     }
     Future<bool?> getBool(String key)async{
       await _setShared();
       final val = _prefs!.getBool(key);
       return val;
     }
     Future<String?> getString(String key)async{
        await _setShared();
        final val = _prefs!.getString(key);
        return val;
      
     }


      // Save an integer value to 'counter' key.
      // await prefs.setInt('counter', 10);
      // // Save an boolean value to 'repeat' key.
      // 
      // // Save an double value to 'decimal' key.
      // await prefs.setDouble('decimal', 1.5);
      // // Save an String value to 'action' key.
      // await prefs.setString('action', 'Start');
      // // Save an list of strings to 'items' key.
      // await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);

}
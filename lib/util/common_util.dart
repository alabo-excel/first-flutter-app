import 'package:shared_preferences/shared_preferences.dart';

class CommonUtil {
  static setLocal(String name, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(name, value);
  }


  static Future<String?> getLocal(String name)  async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(name);
  }


  static removeLocal(String name)  async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(name);
  }

  static Future<bool> checkLocal(String name)  async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(name);
  }

}
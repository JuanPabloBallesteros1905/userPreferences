import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefe;

  static String _name = '';

  static bool _isDarkMode = false;

  static int _gender = 1;

  static Future<void> init() async {
    _prefe = await SharedPreferences.getInstance();
  }
}

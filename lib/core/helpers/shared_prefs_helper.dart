import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  static SharedPreferences? _prefs;

  static SharedPreferences get _p {
    final p = _prefs;
    if (p == null) {
      throw StateError(
        'PrefsHelper not initialized. Call `await PrefsHelper.init()` in main().',
      );
    }
    return p;
  }

  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  static Future<bool> setString(String key, String value) =>
      _p.setString(key, value);

  static Future<bool> setInt(String key, int value) => _p.setInt(key, value);

  static Future<bool> setDouble(String key, double value) =>
      _p.setDouble(key, value);

  static Future<bool> setBool(String key, bool value) => _p.setBool(key, value);

  static String? getString(String key) => _p.getString(key);

  static int? getInt(String key) => _p.getInt(key);

  static double? getDouble(String key) => _p.getDouble(key);

  static bool? getBool(String key) => _p.getBool(key);

  static bool containsKey(String key) => _p.containsKey(key);

  static Future<bool> remove(String key) => _p.remove(key);

  static Future<bool> clear() => _p.clear();
}

import 'package:shared_preferences/shared_preferences.dart';

class LocaleManager {
  static LocaleManager _instance;
  SharedPreferences _preferences;
  static LocaleManager get instance => _instance;

  LocaleManager.init() {
    preferencesInit();
  }

  Future<void> preferencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
    return;
  }

  Future<void> clearAll() async {
    await _preferences.clear();
  }

  Future<void> setIntValue(String key, int value) async {
    await _preferences.setInt(key.toString(), value);
  }

  Future<int> getIntValue(String key) async => _preferences.getInt(key.toString() ?? 0);
}

import 'package:shared_preferences/shared_preferences.dart';

import '../presentation/resources/language_manager.dart';

const String PREFS_KEY_LANG = "PREFS_KEY_LANG";
const String PREFS_JWT_TOKEN = "PREFS_JWT_TOKEN";

class AppPreferences {
  SharedPreferences _sharedPreferences;
  AppPreferences(this._sharedPreferences);

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }

  Future<String> getJwtToken() async {
    String? token = _sharedPreferences.getString(PREFS_JWT_TOKEN);
    if (token != null && token.isNotEmpty) {
      return token;
    } else {
      // return LanguageType.ENGLISH.getValue();
      return "";
    }
  }

  setToken(String token) {
    _sharedPreferences.setString(PREFS_JWT_TOKEN, token);
  }
}

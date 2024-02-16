import 'package:frontend/app/manager/constance/extensions/preferences_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  Preferences._();

//setToken
  static setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(PreferencesConstant.authTokenConstant, token);
  }

  static Future<String?> getToken() async {
    String getToken = '';

    SharedPreferences prefs = await SharedPreferences.getInstance();
    getToken =
        prefs.getString(PreferencesConstant.authTokenConstant) ?? "Empty token";

    return getToken;
  }
}

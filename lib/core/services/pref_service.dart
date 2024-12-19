import 'package:shared_preferences/shared_preferences.dart';

class PrefService {
  static const String _authTokenKey = 'authToken';

  static Future<void> saveAuthToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_authTokenKey, token);
  }

  static Future<String?> getAuthToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_authTokenKey);
  }

  static Future<bool> isAuthToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final authToken = prefs.getString(_authTokenKey);
    return authToken != null;
  }

  static Future<void> removeToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_authTokenKey);
  }
}

 

import 'package:medical_app/global_widget/export.dart';

class SessionManager {
  final String _tokenKey = 'token';
  final String userProfile = 'profile';
  final String newUserKey = 'newUser';
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  /// AUTH TOKEN

  Future fetchToken() async {
    bool valid = false;
    var token = await storage.read(key: _tokenKey);
    if (token != null) {
      // bearerToken = token;
      valid = true;
    }
    return valid;
  }

  Future<bool> checkNewUser() async {
    final prefs = await SharedPreferences.getInstance();
    bool newUser = true;
    final bool? value = prefs.getBool(newUserKey);
    if (value != null) {
      newUser = value;
    } else {
      await prefs.setBool(newUserKey, value ?? false);
    }
    return newUser;
  }
}

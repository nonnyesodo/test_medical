import 'package:flutter/foundation.dart';

class ApiConstants {
  static const String baseUrl = kDebugMode
      ? "https://api-staging.letschop.io/api"
      : "https://api-staging.letschop.io/api";

  static String initiateLoginUrl = "$baseUrl/auth/initiate-login";
   
}

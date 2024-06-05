import 'package:injectable/injectable.dart';

@injectable
class ApiEndpoints {
  /// auth endpoint
  static const String baseUrl = "https://apptest.dokandemo.com/wp-json";
  static const String loginUrl = "/jwt-auth/v1/token";
  static const String registrationUrl = "/wp/v2/users/register";
  static const String validationUrl = "/jwt-auth/v1/token/validate";
  static const String userProfileUrl = "/wp/v2/users/me";
  static const String updateUserProfileUrl = "/wp/v2/users/me";
}

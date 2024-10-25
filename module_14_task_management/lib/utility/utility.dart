import 'package:shared_preferences/shared_preferences.dart';

Future<void> storeUserData(Map<String, dynamic> userData) async {
  final prefs = await SharedPreferences.getInstance();

  // Use null-aware operators to prevent NullPointerException
  await prefs.setString('token', userData['token']);
  await prefs.setString('email', userData['data']['email']);
  await prefs.setString('firstName', userData['data']['firstName'] ?? '');
  await prefs.setString('lastName', userData['data']['lastName'] ?? '');
  await prefs.setString('mobile', userData['data']['mobile'] ?? '');
  await prefs.setString('photo', userData['data']['photo'] ?? '');

  //print("User email stored: ${userData['data']['email']}");
}

Future<void> WriteEmailVerification(Email) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('EmailVerification', Email);
}

Future<void> WriteOTPVerification(OTP) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('OTPVerification', OTP);
}

Future<String?> ReadUserData(Key) async {
  final prefs = await SharedPreferences.getInstance();
  String? mydata = await prefs.getString(Key);
  return mydata;
}

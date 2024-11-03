import 'package:shared_preferences/shared_preferences.dart';

Future<void> storeUserData(Map<String, dynamic> userData) async {
  final prefs = await SharedPreferences.getInstance();

  // Check if 'data' contains at least one item
  if (userData['data'] is List && userData['data'].isNotEmpty) {
    var user = userData['data'][0]; // Get the first user object from the list

    await prefs.setString('token', userData['token']);
    await prefs.setString('email', user['email']);
    await prefs.setString('firstName', user['firstName'] ?? '');
    await prefs.setString('lastName', user['lastName'] ?? '');
    await prefs.setString('mobile', user['mobile'] ?? '');
    await prefs.setString('photo', user['photo'] ?? '');
  } else {
    print("Error: 'data' is either not a list or empty.");
  }
}

Future<void> WriteEmailVerification(Email) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('EmailVerification', Email);
}

Future<void> WriteOTPVerification(OTP) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('OTPVerification', OTP);
}

Future<String?> ReadUserData(String Key) async {
  final prefs = await SharedPreferences.getInstance();
  String? mydata = prefs.getString(Key);
  print("There is all the data: $mydata");
  return mydata;
}

ShowBase64Image() {}

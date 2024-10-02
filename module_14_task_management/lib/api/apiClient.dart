import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:module_14_task_management/style/style.dart';

import '../utility/utility.dart';

var BaseURL = "http://152.42.163.176:2006/api/v1";
var RequestHeader = {"Content-Type": "application/json"};

Future<bool> LoginRequest(FormValues) async {
  try {
    var url = Uri.parse("${BaseURL}/Login");
    var Postbody = jsonEncode(FormValues);
    var Response = await http.post(url, headers: RequestHeader, body: Postbody);

    if (Response.statusCode == 200) {
      var ResultBody = jsonDecode(Response.body);
      if (ResultBody['status'] == 'success') {
        SuccessToast("Request success");
        await storeUserData(ResultBody);
        return true;
      } else {
        ErrorToast("Error: ${ResultBody['message'] ?? 'Unknown error'}");
        return false;
      }
    } else {
      ErrorToast("Failed with status code: ${Response.statusCode}");
      return false;
    }
  } catch (e) {
    ErrorToast("Network error: $e");
    print("Network error: $e");
    return false;
  }
}

Future<bool> RegistrationRequest(Map<String, String> formValues) async {
  try {
    var url = Uri.parse("${BaseURL}/registration");
    var postBody = jsonEncode(formValues);

    var response = await http.post(url, headers: RequestHeader, body: postBody);
    var resultCode = response.statusCode;

    // Handle response body safely
    var resultBody;
    try {
      resultBody = jsonDecode(response.body);
    } catch (e) {
      print("Error decoding response body: $e");
      ErrorToast("Invalid response format from server.");
      return false;
    }

    // Check status code and result
    if (resultCode == 200 && resultBody['status'] == 'success') {
      SuccessToast("Request successful");
      return true;
    } else {
      ErrorToast("Request failed: ${resultBody['message'] ?? 'Unknown error'}");
      return false;
    }
  } catch (e) {
    print("Error during registration request: $e");
    ErrorToast("Failed to connect to the server.");
    return false;
  }
}

Future<bool> VerifyEmailRequest(Email) async {
  var url = Uri.parse("${BaseURL}/RecoveryVerifyEmail/${Email}");
  var Response = await http.get(url, headers: RequestHeader);
  var ResultCode = Response.statusCode;
  var ResultBody = jsonDecode(Response.body);
  if (ResultCode == '200' && ResultBody['status'] == 'success') {
    SuccessToast("Request success");
    return true;
  } else {
    ErrorToast("Failed the request");
    return false;
  }
}

Future<bool> VerifyOTPRequest(Email, OTP) async {
  var url = Uri.parse("${BaseURL}/RecoveryVerifyEmail/${Email}/${OTP}");
  var Response = await http.get(url, headers: RequestHeader);
  var ResultCode = Response.statusCode;
  var ResultBody = jsonDecode(Response.body);
  if (ResultCode == '200' && ResultBody['status'] == 'success') {
    SuccessToast("Request success");
    return true;
  } else {
    ErrorToast("Failed the request");
    return false;
  }
}

Future<bool> SetPasswordRequest(Formvalues) async {
  var url = Uri.parse("${BaseURL}/RecoverResetPass");
  var PostBody = jsonEncode(Formvalues);
  var Response = await http.post(url, headers: RequestHeader, body: PostBody);
  var ResultCode = Response.statusCode;
  var ResultBody = jsonDecode(Response.body);
  if (ResultCode == '200' && ResultBody['status'] == 'success') {
    SuccessToast("Request success");
    return true;
  } else {
    ErrorToast("Failed the request");
    return false;
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:module_14_task_management/style/style.dart';
import 'package:module_14_task_management/utility/utility.dart';

var BaseURL = "http://152.42.163.176:2006/api/v1";
var RequestHeader = {"Content-Type": "application/json"};

Future<bool> LoginRequest(FormValues) async {
  var URL = Uri.parse("${BaseURL}/login");
  var PostBody = json.encode(FormValues);
  var response = await http.post(URL, headers: RequestHeader, body: PostBody);
  var ResultCode = response.statusCode;
  var ResultBody = json.decode(response.body);
  if (ResultCode == 200 && ResultBody['status'] == "success") {
    SuccessToast("Request Success");
    // await WriteUserData(ResultBody);
    return true;
  } else {
    ErrorToast("Request fail ! try again");
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

Future<bool> VerifyEmailRequest(String email) async {
  var url = Uri.parse("${BaseURL}/RecoverVerifyEmail/$email");
  var response = await http.get(url, headers: RequestHeader);

  // Check the status code
  var resultCode = response.statusCode;
  var resultBody = jsonDecode(response.body);

  if (resultCode == 200 && resultBody['status'] == 'success') {
    await WriteEmailVerification(email);
    SuccessToast("Request success");
    return true;
  } else {
    ErrorToast("Failed the request");
    return false;
  }
}

Future<bool> VerifyOTPRequest(String email, String otp) async {
  try {
    var url = Uri.parse("${BaseURL}/RecoverVerifyOtp/$email/$otp");
    var response = await http.get(url, headers: RequestHeader);

    // Check the status code and parse response body
    var resultCode = response.statusCode;
    var resultBody = jsonDecode(response.body);

    if (resultCode == 200 && resultBody['status'] == 'success') {
      await WriteOTPVerification(otp); // Storing the OTP for further use
      SuccessToast("OTP verified successfully");
      return true;
    } else {
      ErrorToast(
          "OTP verification failed: ${resultBody['message'] ?? 'Unknown error'}");
      return false;
    }
  } catch (e) {
    // Handle any errors during the request
    ErrorToast("An error occurred: $e");
    print("Error: $e");
    return false;
  }
}

Future<bool> SetPasswordRequest(Map<String, String> formValues) async {
  var url = Uri.parse("${BaseURL}/RecoverResetPassword");

  // Convert the form values to JSON
  var postBody = jsonEncode(formValues);

  try {
    // Make the POST request
    var response = await http.post(
      url,
      headers: {
        'Content-Type':
            'application/json', // Ensure the server knows we're sending JSON
        ...RequestHeader, // Include any other headers required
      },
      body: postBody,
    );

    // Check the response status code
    if (response.statusCode == 200) {
      var resultBody = jsonDecode(response.body);
      // Check for success status in the response body
      if (resultBody['status'] == 'success') {
        SuccessToast("Request successful!");
        return true;
      } else {
        // Handle unsuccessful responses based on the API's response
        ErrorToast(resultBody['message'] ?? "Failed to reset password");
        return false;
      }
    } else {
      // Log the error for debugging
      print("Error: ${response.statusCode} - ${response.body}");
      ErrorToast("Failed the request. Status Code: ${response.statusCode}");
      return false;
    }
  } catch (e) {
    // Catch any exceptions and log them
    print("Exception: $e");
    ErrorToast("An error occurred while resetting the password.");
    return false;
  }
}

import 'package:flutter/material.dart';
import 'package:module_14_task_management/style/style.dart';

import '../../api/apiClient.dart';
import 'loginScreen.dart';

class ragistrationScreen extends StatefulWidget {
  const ragistrationScreen({super.key});

  @override
  State<ragistrationScreen> createState() => _ragistrationScreenState();
}

class _ragistrationScreenState extends State<ragistrationScreen> {
  Map<String, String> formValues = {
    "email": "",
    "firstName": "",
    "lastName": "",
    "mobile": "",
    "password": "",
    "photo": "",
    "cpassword": "",
  };
  bool loading = false;

  InputOnChange(String mapKey, String textValue) {
    setState(() {
      formValues.update(mapKey, (value) => textValue);
    });
  }

  formOnSubmit() async {
    if (formValues['email']!.isEmpty) {
      ErrorToast("Email Required");
      return;
    } else if (formValues['password']!.isEmpty) {
      ErrorToast("Password Required");
      return;
    } else if (formValues['firstName']!.isEmpty) {
      ErrorToast("First Name Required");
      return;
    } else if (formValues['lastName']!.isEmpty) {
      ErrorToast("Last Name Required");
      return;
    } else if (formValues['mobile']!.isEmpty) {
      ErrorToast("Mobile Required");
      return;
    } else if (formValues['password'] != formValues['cpassword']) {
      ErrorToast("Confirm password should be the same");
      return;
    } else {
      setState(() {
        loading = true;
      });
      bool res = await RegistrationRequest(formValues);
      if (res == true) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    LoginScreen()), // Fix this with actual LoginScreen
            (route) => false);
      } else {
        setState(() {
          loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          SingleChildScrollView(
            child: loading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Join With Us",
                          style: Head1Text(colorDarkBlue),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Learn from Mistakes",
                          style: Head6Text(colorLightGray),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: AppInputDecoration("Email address"),
                          onChanged: (textValue) {
                            InputOnChange("email", textValue);
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: AppInputDecoration("First Name"),
                          onChanged: (textValue) {
                            InputOnChange("firstName", textValue);
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: AppInputDecoration("Last Name"),
                          onChanged: (textValue) {
                            InputOnChange("lastName", textValue);
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: AppInputDecoration("Mobile Number"),
                          onChanged: (textValue) {
                            InputOnChange("mobile", textValue);
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: AppInputDecoration("Password"),
                          onChanged: (textValue) {
                            InputOnChange(
                                "password", textValue); // Corrected key
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: AppInputDecoration("Confirm Password"),
                          onChanged: (textValue) {
                            InputOnChange("cpassword", textValue);
                          },
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: AppButtonStyle(),
                          onPressed: formOnSubmit,
                          child: SuccessButtonChild("Register"),
                        )
                      ],
                    ),
                  ),
          )
        ],
      ),
    );
  }
}

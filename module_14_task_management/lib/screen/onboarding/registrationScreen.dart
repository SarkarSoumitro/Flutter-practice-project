import 'package:flutter/material.dart';
import 'package:module_14_task_management/style/style.dart';

class ragistrationScreen extends StatefulWidget {
  const ragistrationScreen({super.key});

  @override
  State<ragistrationScreen> createState() => _ragistrationScreenState();
}

class _ragistrationScreenState extends State<ragistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Join With Us",
                  style: Head1Text(colorDarkBlue),
                ),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  "Learn with by Mistakes",
                  style: Head6Text(colorLightGray),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: AppInputDecoration("Email address"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: AppInputDecoration("First Name"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: AppInputDecoration("Last Name"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: AppInputDecoration("Mobile Number"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: AppInputDecoration("Password"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: ElevatedButton(
                      style: AppButtonStyle(),
                      onPressed: () {},
                      child: SuccessButtonChild("Registration")),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

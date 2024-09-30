import 'package:flutter/material.dart';
import 'package:module_14_task_management/screen/onboarding/emailVerificationScreen.dart';
import 'package:module_14_task_management/screen/onboarding/loginScreen.dart';
import 'package:module_14_task_management/screen/onboarding/pinVerificationScreen.dart';
import 'package:module_14_task_management/screen/onboarding/registrationScreen.dart';
import 'package:module_14_task_management/screen/onboarding/setPasswordScreen.dart';
import 'package:module_14_task_management/screen/onboarding/splashScreen.dart';
import 'package:module_14_task_management/screen/task/newTaskListScreen.dart';

void main() {
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/registration': (context) => ragistrationScreen(),
        '/emailVerification': (context) => emailVerificationScreen(),
        '/pinVerification': (context) => pinVerificationScreen(),
        '/setPassword': (context) => setPasswordScreen(),
        '/newTaskList': (context) => newTaskListScreen()
      },
    );
  }
}

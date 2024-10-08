import 'package:auth_ui/components/Mybutton.dart';
import 'package:auth_ui/components/Mytextstyle.dart';
import 'package:auth_ui/components/square_tile.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  //controller
  final usernamecontroller = TextEditingController();
  final passwordcontrller = TextEditingController();

  void SignUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 85,
              ),

              //logo
              Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(
                height: 50,
              ),

              //welcome back you have been missed
              Text(
                'Welcome back you\'ve been missed',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),

              //username textfield
              Mytextstyle(
                Controller: usernamecontroller,
                hinttext: "Username",
                obsecureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              //passward textfield
              Mytextstyle(
                Controller: passwordcontrller,
                hinttext: "Password",
                obsecureText: true,
              ),
              const SizedBox(height: 15),

              //forget passward
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forget password?"),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //signin
              Mybutton(
                onTap: SignUserIn,
              ),
              const SizedBox(
                height: 50,
              ),

              //or contunue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "or continue with",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 50,
              ),
              //goggle + apple sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //goggle button
                  SquareTile(imagepath: 'images/Goggle.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  //apple button
                  SquareTile(imagepath: 'images/apple-logo.png'),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              //not a member? resister now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?"),
                  Text(
                    "Register now",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

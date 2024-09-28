import 'dart:math'; // For generating random numbers
import 'dart:ui';

import 'package:empolyee_details_app_using_api/Screens/employee_details.dart';
import 'package:empolyee_details_app_using_api/Screens/services.dart';
import 'package:empolyee_details_app_using_api/models/users_model.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<User> usermodel = [];
  bool isloading = false;

  // List of local images
  final List<String> randomImages = [
    'images/builder.png',
    'images/wk.png',
    'images/worker.png',
    // Add more image names here
  ];

  myUsers() {
    isloading = true;
    userItems().then((value) {
      setState(() {
        usermodel = value;
        isloading = false;
      });
    });
  }

  // Function to get a random image
  String getRandomImage() {
    final random = Random();
    int index = random.nextInt(randomImages.length);
    return randomImages[index];
  }

  @override
  void initState() {
    myUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white.withAlpha(200),
        elevation: 10,
        title: const Text(
          "Employee List",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: isloading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: usermodel.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final users = usermodel[index];
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserDetail(user: users),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.blue,
                                backgroundImage: NetworkImage(users.image),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(text: "${users.firstName} "),
                                        TextSpan(text: "${users.lastName}"),
                                      ],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                  Text(users.company.department),
                                ],
                              ),
                              const Spacer(),
                              Image.asset(
                                getRandomImage(),
                                width: 50, // Set the desired width
                                height: 50, // Set the desired height
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}

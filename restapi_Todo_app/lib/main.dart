import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  //navigator -> route
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profilescreeen()));
                },
                child: Text("Go to profile Screen ")),
            ElevatedButton(
                onPressed: () {
                  //navigator -> route
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settingscreen()));
                },
                child: Text("Go to setting")),
          ],
        ),
      ),
    );
  }
}

//Profile screen

class Profilescreeen extends StatefulWidget {
  const Profilescreeen({super.key});

  @override
  State<Profilescreeen> createState() => _ProfilescreeenState();
}

class _ProfilescreeenState extends State<Profilescreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
      body: Column(
        children: [ElevatedButton(onPressed: () {}, child: Text("Profile"))],
      ),
    );
  }
}

// settings screen
class Settingscreen extends StatefulWidget {
  const Settingscreen({super.key});

  @override
  State<Settingscreen> createState() => _SettingscreenState();
}

class _SettingscreenState extends State<Settingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("back"))
          ],
        ),
      ),
    );
  }
}

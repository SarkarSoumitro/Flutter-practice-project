import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove color property
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Hero Image (optional)
              Image.network(
                'https://placeimg.com/640/480/tech',
                fit: BoxFit.cover,
                height: 200.0,
              ),

              // Title with padding
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Welcome to My App!',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),

              // Body Text
              const Text(
                'This is a full-body description of the app. It can contain multiple paragraphs, links, and other elements to inform users about the app\'s purpose and features. You can use RichText for further styling options.',
                style: TextStyle(fontSize: 16.0),
              ),

              // Action Button (optional)
              ElevatedButton(
                onPressed: () {
                  // Handle button press action (e.g., navigate to another page)
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Button Pressed!')),
                  );
                },
                child: const Text('Explore More'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

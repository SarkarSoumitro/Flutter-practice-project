import 'dart:convert';

import 'package:api_call_products_crud/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<dynamic> users = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchusers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rest api call",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[300],
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final email = user['email'];
            final name = user['name']['first'];
            final imageUrl = user['picture']['thumbnail'];
            return ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(imageUrl)),
              title: Text(name),
              subtitle: Text(email),
            );
          }),
      floatingActionButton: FloatingActionButton(onPressed: fetchusers),
    );
  }

  void fetchusers() async {
    print("fetching users");

    final url = 'https://randomuser.me/api/?results=50';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
    print('users fetching is completed');
  }
}

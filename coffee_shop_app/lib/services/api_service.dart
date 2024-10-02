import 'dart:convert';

import 'package:coffee_shop_app/services/utility/model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl =
      'https://jsonplaceholder.typicode.com/todos'; // Use a real endpoint

  Future<List<Task>> readTasks() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((task) => Task.fromJson(task)).toList();
    } else {
      throw Exception('Failed to load tasks');
    }
  }

// Include create and delete methods as needed
}

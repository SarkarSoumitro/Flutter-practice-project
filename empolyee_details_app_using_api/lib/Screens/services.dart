// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;

import '../models/users_model.dart';

userItems() async {
  Uri url = Uri.parse("https://dummyjson.com/users");
  var res = await http.get(url);
  try {
    if (res.statusCode == 200) {
      var data = userModelFromJson(res.body);
      return data.users;
    } else {
      print("Error occured");
    }
  } catch (e) {
    print(e.toString());
  }
}

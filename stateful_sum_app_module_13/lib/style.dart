import 'package:flutter/material.dart';

InputDecoration AppinputStyle(label) {
  return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      filled: true,
      fillColor: Colors.green[200],
      border: OutlineInputBorder(),
      labelText: label,
      labelStyle: TextStyle(fontSize: 19));
}

TextStyle Headerstyle() {
  return TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
}

ButtonStyle addbuttonstyle() {
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(18),
      backgroundColor: Colors.lime[200],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))));
}

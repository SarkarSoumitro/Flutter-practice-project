import 'package:flutter/material.dart';

ListView TaskList(TaskItems) {
  return ListView.builder(
      itemCount: TaskItems.length,
      itemBuilder: (context, index) {
        return Card();
      });
}

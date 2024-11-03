import 'package:flutter/material.dart';
import 'package:module_14_task_management/style/style.dart';

ListView TaskList(TaskItems) {
  return ListView.builder(
      itemCount: TaskItems.length,
      itemBuilder: (context, index) {
        return Card(
            child: ItemSizeBox(Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              TaskItems[index]['title'],
              style: Head6Text(colorDarkBlue),
            ),
            Text(
              TaskItems[index]['description'],
              style: Head7Text(colorDarkBlue),
            ),
          ],
        )));
      });
}

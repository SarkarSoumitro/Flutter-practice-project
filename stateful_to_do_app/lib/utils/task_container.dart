import 'dart:math'; // Import for random number generation

import 'package:flutter/material.dart';

class TaskContainer extends StatelessWidget {
  final String taskName;
  final bool isCompleted;
  final DateTime dateTime;

  const TaskContainer({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.dateTime,
  });

  // Function to generate a random color
  Color getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256), // Red
      random.nextInt(256), // Green
      random.nextInt(256), // Blue
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        //color: getRandomColor(), // Set the random color as background
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(4.0, 4.0),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(-4.0, -4.0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Task name
          Text(
            taskName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isCompleted ? Colors.green : Colors.red,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          // Task date
          Text(
            'Due: ${dateTime.toLocal().toString()}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          const Spacer(),
          // Task status (Completed or Not)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                isCompleted ? Icons.check_circle : Icons.circle_outlined,
                color: isCompleted ? Colors.green : Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

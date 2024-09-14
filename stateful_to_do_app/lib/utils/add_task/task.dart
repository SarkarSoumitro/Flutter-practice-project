import 'package:flutter/material.dart';

import '../task data/task_model.dart';

class TaskInputWidget extends StatefulWidget {
  final TaskManager taskManager;
  final DateTime dateTime;
  final VoidCallback onTaskAdded; // Callback to notify on task addition

  const TaskInputWidget({
    super.key,
    required this.taskManager,
    required this.dateTime,
    required this.onTaskAdded,
  });

  @override
  State<TaskInputWidget> createState() => _TaskInputWidgetState();
}

class _TaskInputWidgetState extends State<TaskInputWidget> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      padding: EdgeInsets.only(right: 15, left: 15, top: 30, bottom: 15),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
              filled: true,
              fillColor: Colors.green[200],
              border: OutlineInputBorder(),
              labelText: "Enter your task",
              labelStyle: TextStyle(fontSize: 19),
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              if (controller.text.isNotEmpty) {
                widget.taskManager.addTask(controller.text, widget.dateTime);
                controller.clear();
                widget.onTaskAdded(); // Notify that task was added
              }
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'ADD TASK',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

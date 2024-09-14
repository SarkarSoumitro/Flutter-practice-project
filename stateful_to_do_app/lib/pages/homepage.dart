import 'package:flutter/material.dart';

import '../utils/add_task/task.dart';
import '../utils/task data/task_model.dart';
import '../utils/task_container.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TaskManager taskManager = TaskManager();
  final TextEditingController controller = TextEditingController();
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white.withAlpha(200),
        centerTitle: true,
        title: const Text(
          "TO DO APP",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          TaskInputWidget(
            taskManager: taskManager,
            dateTime: dateTime,
            onTaskAdded: () {
              setState(() {});
              print("Tasks in list: ${taskManager.taskList.length}");
            },
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: taskManager.taskList.length,
              itemBuilder: (context, index) {
                final task = taskManager.taskList[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      taskManager.toggleTaskCompletion(index);
                    });
                  },
                  onLongPress: () {
                    setState(() {
                      taskManager.deleteTask(index);
                    });
                  },
                  child: TaskContainer(
                    taskName: task.tname,
                    isCompleted: task.isCompleted,
                    dateTime: task.dateTime,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

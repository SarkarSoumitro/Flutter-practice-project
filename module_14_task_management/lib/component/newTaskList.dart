import 'package:flutter/material.dart';
import 'package:module_14_task_management/api/apiClient.dart';
import 'package:module_14_task_management/component/TaskList.dart';

class newTaskList extends StatefulWidget {
  const newTaskList({super.key});

  @override
  State<newTaskList> createState() => _newTaskListState();
}

class _newTaskListState extends State<newTaskList> {
  List TaskItems = [];
  bool loading = true;

  @override
  void initState() {
    CallData(); // Fetch tasks when the widget initializes
    super.initState();
  }

  CallData() async {
    var data = await TaskListRequest("Completed");
    print("Fetched Data: $data");
    setState(() {
      loading = false; // Stop the loading indicator
      TaskItems = data; // Assign fetched tasks to TaskItems
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? (Center(
            child: CircularProgressIndicator(),
          ))
        : RefreshIndicator(
            onRefresh: () async {
              await CallData();
            },
            child: TaskList(TaskItems));
  }
}

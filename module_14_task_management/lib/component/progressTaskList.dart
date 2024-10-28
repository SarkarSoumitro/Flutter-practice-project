import 'package:flutter/material.dart';

import '../api/apiClient.dart';

class progressTaskList extends StatefulWidget {
  const progressTaskList({super.key});

  @override
  State<progressTaskList> createState() => _progressTaskListState();
}

class _progressTaskListState extends State<progressTaskList> {
  List TaskItems = [];
  bool loading = true;

  @override
  void initState() {
    CallData();
    super.initState();
  }

  CallData() async {
    var data = await TaskListRequest("Progress");
    setState(() {
      loading = false;
      TaskItems = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? (Center(
            child: CircularProgressIndicator(),
          ))
        : Center(
            child: Text("progress"),
          );
  }
}

import 'package:flutter/material.dart';
import 'package:module_14_task_management/component/appBottomNav.dart';
import 'package:module_14_task_management/component/cancelTaskList.dart';
import 'package:module_14_task_management/component/completedTaskList.dart';
import 'package:module_14_task_management/component/newTaskList.dart';
import 'package:module_14_task_management/component/progressTaskList.dart';

import '../../component/TaskAppBar.dart';
import '../../utility/utility.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int TabIndex = 0;
  Map<String, String> ProfileData = {
    "email": "",
    "firstName": "",
    "lastName": "",
    "photo": DefaultProfilePic
  };
  onItemTapped(index) {
    setState(() {
      TabIndex = index;
    });
  }

  final widgetsoptions = [
    newTaskList(),
    progressTaskList(),
    completedTaskList(),
    cancelTaskList()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskAppBar(context, ProfileData),
      body: widgetsoptions.elementAt(TabIndex),
      bottomNavigationBar: appBottomNav(TabIndex, onItemTapped),
    );
  }
}

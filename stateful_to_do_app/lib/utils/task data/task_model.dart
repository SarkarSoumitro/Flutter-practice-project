class Task {
  String tname;
  DateTime dateTime;
  bool isCompleted = false;

  Task({required this.dateTime, required this.tname});
}

class TaskManager {
  List<Task> taskList = [];

  void addTask(String tname, DateTime dateTime) {
    if (tname.isNotEmpty) {
      taskList.add(Task(dateTime: dateTime, tname: tname));
    }
  }

  void deleteTask(int index) {
    if (index >= 0 && index < taskList.length) {
      taskList.removeAt(index);
    }
  }

  void toggleTaskCompletion(int index) {
    if (index >= 0 && index < taskList.length) {
      taskList[index].isCompleted = !taskList[index].isCompleted;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:tasks_app/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/images/dash.png', 3),
    Task('Ir para a academia', 'assets/images/academia.jpg', 3),
    Task('Jogar videogame', 'assets/images/videogame.jpg', 1),
    Task('Meditar', 'assets/images/meditar.jpeg', 4),
    Task('Fazer o TCC', 'assets/images/estudar.jpg', 5),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}

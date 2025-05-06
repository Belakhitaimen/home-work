import 'package:equatable/equatable.dart';

class TaskItems extends Equatable {
  final String titel;
  final DateTime data;
  bool isDone;
  TaskItems({
    required this.titel,
    required this.data,
    this.isDone = false,
  });

  @override
  List<Object?> get props => [titel, data];
}

class TaskListManger {
  final List<TaskItems> _tasks = [];
  void addTask(TaskItems task) {
    _tasks.add(task);
  }

  void deleteTask(TaskItems task) {
    _tasks.remove(task);
  }

  void updateTask(TaskItems task) {
    _tasks.remove(task);
    _tasks.add(task);
  }
}

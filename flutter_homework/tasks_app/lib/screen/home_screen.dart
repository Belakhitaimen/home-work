import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/task_item.dart';
import 'package:tasks_app/models/tasks_items.dart';
import 'package:tasks_app/widgets/no_tasks.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = '';

  final TaskListManger _taskListManager = TaskListManger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 16),
          const TaskItem(),
            _taskListManager.tasks.isempty?const
              NoTasks(),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, -2),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: TextField(
                      onChanged: (value) {
                        title = value;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffEEF5F3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'Add a new task ...',
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      if (title.isNotEmpty) {
                        var task = TaskItems(
                          titel: title,
                          data: DateTime.now(),
                        );
                        _taskListManager.addTask(task);
                        setState(() {});
                      }
                    },
                    icon: const Icon(
                      Icons.add_circle_sharp,
                      color: Color(0xffDDE3E1),
                      size: 55,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

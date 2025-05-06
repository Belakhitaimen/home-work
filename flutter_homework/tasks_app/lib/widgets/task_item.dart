import 'package:flutter/material.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({super.key});


  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      color: const Color(0xffEEF4F2),
      child: SizedBox(
        width: 350,
        height: 100,
        child: Center(
          child: ListTile(
            leading: Checkbox(value: false, onChanged: (bool?value) {}),
            title: const Text('New Task'),
            subtitle: const Text('created :25/01/2025'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_outline_outlined,
                color: Colors.red,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

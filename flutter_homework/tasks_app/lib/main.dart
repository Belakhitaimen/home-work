import 'package:flutter/material.dart';
import 'package:tasks_app/screen/home_screen.dart';

void main() {
  runApp(const TasksApp());
}

class TasksApp extends StatelessWidget {
  const TasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffF4FAF8),
        appBar: AppBar(
          backgroundColor: const Color(0xff9DF2E2),
          title: const Text(
            'My Tasks',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          ),
        ),
        body:  HomeScreen(),
      ),
    );
  }
}

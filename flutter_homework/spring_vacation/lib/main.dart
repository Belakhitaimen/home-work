import 'package:flutter/material.dart';
import 'package:spring_vacation/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        fontFamily: "Merriweather",
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomePage(),
    );
  }
}

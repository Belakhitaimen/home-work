import 'package:flutter/material.dart';

class MaleFemale extends StatefulWidget {
  const MaleFemale({super.key});

  @override
  State<MaleFemale> createState() => _MaleFemaleState();
}

class _MaleFemaleState extends State<MaleFemale> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Male Option
        GestureDetector(
          onTap: () {
            setState(() {
              isMaleSelected = true;
              isFemaleSelected = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: isMaleSelected ? Colors.blue : Color(0xff15152F),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 170,
            width: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.male, color: Colors.white, size: 100),
                Text(
                  'MALE',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 30), // Spacing between options
        // Female Option
        GestureDetector(
          onTap: () {
            setState(() {
              isFemaleSelected = true;
              isMaleSelected = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: isFemaleSelected ? Colors.pink : Color(0xff15152F),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 170,
            width: 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.female, color: Colors.white, size: 100),
                Text(
                  'FEMALE',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

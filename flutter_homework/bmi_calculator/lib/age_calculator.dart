import 'package:flutter/material.dart';

class AgeWidget extends StatefulWidget {
  const AgeWidget({super.key});

  @override
  State<AgeWidget> createState() => _AgeWidgetState();
}

class _AgeWidgetState extends State<AgeWidget> {
  int ageClculator = 18;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff15152F),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 170,
      width: 170,
      child: Column(
        children: [
          Text('AGE', style: TextStyle(color: Colors.grey, fontSize: 30)),
          Text(
            '$ageClculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    ageClculator--;
                  });
                },
                icon: Icon(
                  Icons.remove_circle_outline_sharp,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              SizedBox(width: 10),
              IconButton(
                onPressed: () {
                  setState(() {
                    ageClculator++;
                  });
                },
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

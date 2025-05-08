import 'package:flutter/material.dart';

class WeightWidget extends StatefulWidget {
  const WeightWidget({super.key});

  @override
  State<WeightWidget> createState() => _WeightWidgetState();
}

class _WeightWidgetState extends State<WeightWidget> {
  int weghtClculator = 50;
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
          Text('Weight', style: TextStyle(color: Colors.grey, fontSize: 30)),
          Text(
            '$weghtClculator',
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
                    weghtClculator--;
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
                    weghtClculator++;
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
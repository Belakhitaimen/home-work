import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  double height = 174.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff15152F),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 200,
      width: 380,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.round().toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'cm',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Slider(
            value: height,
            min: 100,
            max: 250,
            divisions: 150,
            label: height.round().toString(),
            onChanged: (double newValue) {
              setState(() {
                height = newValue;
              });
            },
            activeColor: Colors.teal,
            inactiveColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}

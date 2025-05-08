import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffe87a64),
          title: Text(
            'Points Counter',
            style: TextStyle(color: Color(0xff132541)),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Team A', style: TextStyle(fontSize: 42)),
                    Text('$teamAPoints', style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        foregroundColor: Color(0xffe87a64),
                        backgroundColor: Color(0xff132541),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        foregroundColor: Color(0xffe87a64),
                        backgroundColor: Color(0xff132541),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        foregroundColor: Color(0xffe87a64),
                        backgroundColor: Color(0xff132541),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 480,
                  child: VerticalDivider(color: Colors.grey, thickness: 2),
                ),
                Column(
                  children: [
                    Text('Team B', style: TextStyle(fontSize: 42)),
                    Text('$teamBPoints', style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        foregroundColor: Color(0xffe87a64),
                        backgroundColor: Color(0xff132541),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        foregroundColor: Color(0xffe87a64),
                        backgroundColor: Color(0xff132541),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        foregroundColor: Color(0xffe87a64),
                        backgroundColor: Color(0xff132541),
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                foregroundColor: Color(0xffe87a64),
                backgroundColor: Color(0xff132541),
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text('Reset', style: TextStyle(fontSize: 18)),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

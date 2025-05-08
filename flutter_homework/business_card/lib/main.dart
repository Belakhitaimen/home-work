import 'package:flutter/material.dart';

void main() {
  runApp(BusnissCardApp());
}

class BusnissCardApp extends StatelessWidget {
  const BusnissCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff23194f),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 152,
              backgroundColor: Color(0xffe87a64),
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('images/busniess_card.jpg'),
              ),
            ),
            Text(
              'APP Zenith',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                color: Color(0xfff9e4da),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Color(0xfff9e4da),
              thickness: 1,
              indent: 60,
              endIndent: 60,
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 65,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Icon(
                        Icons.phone,
                        color: Color(0xff23194f),
                        size: 32,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        '(+213) 777176984',
                        style: TextStyle(
                          color: Color(0xff23194f),
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 65,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Icon(
                        Icons.email,
                        color: Color(0xff23194f),
                        size: 32,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'aymenbelakhit@gmail.com',
                        style: TextStyle(
                          color: Color(0xff23194f),
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.email, color: Color(0xff23194f), size: 32),
                title: Text(
                  '(ALGERIA algeria)',
                  style: TextStyle(color: Color(0xff23194f), fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

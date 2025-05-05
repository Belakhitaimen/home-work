import 'package:basket_ball_points/screen/colors_page.dart';
import 'package:basket_ball_points/screen/family_members_page.dart';
import 'package:basket_ball_points/screen/numbers_page.dart';
import 'package:basket_ball_points/screen/phrases_page.dart';
import 'package:flutter/material.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: Color(0xffFF9235),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NumbersPage();
                  },
                ),
              );
            },
          ),

          Category(
            text: 'Family Members',
            color: Color(0xff5e8f3d),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return FamilyMumbersPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: Color(0xff79359f),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ColorsPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Phrases',
            color: Color(0xff50adc7),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return PhrasesPage();
                  },
                ),
              );
            },
          ),
          SizedBox(height: 100),
          CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage('assets/images/doll_festival_10.jpg'),
          ),
        ],
      ),
    );
  }
}

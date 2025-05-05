import 'package:basket_ball_points/components/list_item.dart';
import 'package:flutter/material.dart';

import '../models/number.dart';

class FamilyMumbersPage extends StatelessWidget {
  const FamilyMumbersPage({super.key});
  final List<ItemModel> familtList = const [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'father',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/grand father.wav',
      jpName: 'Ojisan',
      enName: 'grandfather',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
      jpName: 'Hahaoya',
      enName: 'mother',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/grand mother.wav',
      jpName: 'Sobo',
      enName: 'grandmother',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/older bother.wav',
      jpName: 'Nisan',
      enName: 'brother',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/older sister.wav',
      jpName: 'Ane',
      enName: 'sister',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
      jpName: 'Musuko',
      enName: 'son',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/younger brohter.wav',
      jpName: 'Kyu',
      enName: 'brother',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/younger sister.wav',
      jpName: 'Ju',
      enName: 'sister',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Family Members', style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: familtList.length,
        itemBuilder: (context, index) {
          return ListItem(item: familtList[index], color: Color(0xff5e8f3d));
        },
      ),
    );
  }
}

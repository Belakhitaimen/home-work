
import 'package:basket_ball_points/components/item_info.dart';
import 'package:basket_ball_points/models/number.dart';
import 'package:flutter/material.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(children: [Expanded(child: ItemInfo(item: item))]),
    );
  }
}

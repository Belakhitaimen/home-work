import 'package:basket_ball_points/components/item_info.dart';
import 'package:basket_ball_points/models/number.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xfffff6dc), child: Image.asset(item.image!)),

          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}

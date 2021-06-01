import 'package:flutter/material.dart';
import 'package:kosan/models/tips.dart';
import 'package:kosan/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(tips.imageUrl, width: 60),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tips.title, style: blackTextStyle.copyWith(fontSize: 16)),
          SizedBox(
            height: 4,
          ),
          Text(tips.updatedAt,
              style: greyTextStyle.copyWith(fontSize: 14))
        ],
      ),
      Spacer(),
      IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_right, size: 23, color: greyColor))
    ]);
  }
}

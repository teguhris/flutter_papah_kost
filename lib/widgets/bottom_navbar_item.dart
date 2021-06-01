import 'package:flutter/material.dart';

import '../theme.dart';

class BottomNavbarItem extends StatelessWidget {

  final String imageUrl;
  final bool isActive;


  BottomNavbarItem({required this.imageUrl,required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(imageUrl, width: 24),
        Spacer(),
        isActive?Container(
          width: 28,
          height: 4,
          decoration: BoxDecoration(
              color: purpleColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(1000))),
        ):Container()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kosan/models/city.dart';
import 'package:kosan/theme.dart';

class CityCard extends StatelessWidget {
  City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 148,
        width: 107,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(city.imageUrl,
                    width: 120, height: 102, fit: BoxFit.cover),
               city.isPopular? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(35))),
                      child: Center(
                          child: Image.asset('assets/Icon_star.png',
                              width: 20, height: 20))),
                ):Container()
              ],
            ),
            SizedBox(height: 11),
            Text(
              city.name,
              style: blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

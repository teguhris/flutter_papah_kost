import 'package:flutter/material.dart';
import 'package:kosan/models/space.dart';
import 'package:kosan/pages/detail_page.dart';
import 'package:kosan/theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Container(
                width: 110,
                height: 110,
                child: Stack(
                  children: [
                    Image.asset(space.imageUrl,height:90,width:110,fit: BoxFit.cover),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          width: 70,
                          height: 30,
                          
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/Icon_star.png',
                                  width: 18, height: 18),
                              Text(' ${space.rating}/5',
                                  style: whiteTextStyle.copyWith(fontSize: 13))
                            ],
                          )),
                    ),
                  ],
                )),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(space.name, style: blackTextStyle.copyWith(fontSize: 17)),
              SizedBox(height: 2),
              Text.rich(TextSpan(
                  text: 'Rp. ${space.price}',
                  style: purpleTextStyle.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                      text: '/bulan',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    )
                  ])
                  ),
              SizedBox(
                height: 16,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: greyTextStyle.copyWith(fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}

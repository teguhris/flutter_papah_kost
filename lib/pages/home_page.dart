import 'package:flutter/material.dart';
import 'package:kosan/models/city.dart';
import 'package:kosan/models/space.dart';
import 'package:kosan/models/tips.dart';
import 'package:kosan/theme.dart';
import 'package:kosan/widgets/bottom_navbar_item.dart';
import 'package:kosan/widgets/city_card.dart';
import 'package:kosan/widgets/space_card.dart';
import 'package:kosan/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(children: [
          //TITLE : HEADER
          SizedBox(
            height: edge,
          ),

          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Papah.png'))),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 15,
          ),
          Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Mencari Kosan yanng tepat hemat',
                  style: greyTextStyle.copyWith(fontSize: 16))),
          SizedBox(
            height: 25,
          ),
          //note :POPULAR CITIES
          Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Kos kosan di kota: ',
                  style: regularTextStyle.copyWith(fontSize: 16))),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: edge),
              children: [
                CityCard(City(
                    id: 1,
                    name: 'Jakarta',
                    imageUrl: 'assets/monas2.jpg',
                    isPopular: true)),
                SizedBox(width: 20),
                CityCard(City(
                    id: 2,
                    name: 'Bali',
                    imageUrl: 'assets/bali.jpg',
                    isPopular: true)),
                SizedBox(width: 20),
                CityCard(City(
                    id: 3,
                    name: 'Jogja',
                    imageUrl: 'assets/jogja.jpg',
                    isPopular: false)),
                SizedBox(width: 20),
                CityCard(City(
                    id: 4,
                    name: 'Surabaya',
                    imageUrl: 'assets/surabaya.jpg',
                    isPopular: true)),
                SizedBox(width: 20),
                CityCard(City(
                    id: 5,
                    name: 'Kediri',
                    imageUrl: 'assets/jogja1.jpg',
                    isPopular: false)),
                SizedBox(width: 20),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // NOTE : RECOMENDED SPACE
          Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Recomendasi Papah',
                  style: regularTextStyle.copyWith(fontSize: 16))),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      SpaceCard(
                        Space(
                            id: 1,
                            name: 'Kosan Bu Mimy',
                            imageUrl: 'assets/kost1.jpg',
                            price: 680000,
                            country: 'Indonesia',
                            city: 'Jakarta',
                            rating: 4),
                      ),
                      SpaceCard(
                        Space(
                            id: 2,
                            name: 'Kosan Bu Encum',
                            imageUrl: 'assets/kost2.jpg',
                            price: 600000,
                            country: 'Indonesia',
                            city: 'Bekasi',
                            rating: 4),
                      ),
                      SpaceCard(
                        Space(
                            id: 1,
                            name: 'Kosan Bu Reni',
                            imageUrl: 'assets/kost4.jpg',
                            price: 700000,
                            country: 'Indonesia',
                            city: 'Tangsel',
                            rating: 4),
                      ),
                      SpaceCard(
                        Space(
                            id: 1,
                            name: 'Kosan Bu ita',
                            imageUrl: 'assets/kos3.jpg',
                            price: 700000,
                            country: 'Indonesia',
                            city: 'Tangsel',
                            rating: 4),
                      ),
                      SpaceCard(
                        Space(
                            id: 1,
                            name: 'Kosan Bu Yani',
                            imageUrl: 'assets/kos5.jpg',
                            price: 700000,
                            country: 'Indonesia',
                            city: 'Tangsel',
                            rating: 4),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //NOTE : TIPS & Guidance
          Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text('Tips dan Petunjuk',
                  style: regularTextStyle.copyWith(fontSize: 16))),
          SizedBox(
            height: 16,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(Tips(
                      id: 1,
                      title: 'City Guidlines',
                      imageUrl: 'assets/tips1.png',
                      updatedAt: '20 Apr')),
                  SizedBox(
                    height: 16,
                  ),
                  TipsCard(Tips(
                      id: 2,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/tips2.png',
                      updatedAt: '11 Des')),
                ],
              )),
          SizedBox(
            height: 50 + edge,
          ),
        ]),
      ),
      floatingActionButton: Container(
          height: 50,
          margin: EdgeInsets.only(left: edge, right: edge),
          decoration: BoxDecoration(
              color: Color(0xffF6F7F8),
              borderRadius: BorderRadius.circular(23)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarItem(
                imageUrl: 'assets/Icon_home.png',
                isActive: true,
              ),
              BottomNavbarItem(
                imageUrl: 'assets/Icon_mail.png',
                isActive: false,
              ),
              BottomNavbarItem(
                imageUrl: 'assets/Icon_card.png',
                isActive: false,
              ),
              BottomNavbarItem(
                imageUrl: 'assets/Icon_love.png',
                isActive: false,
              )
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

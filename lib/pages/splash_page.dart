import 'package:flutter/material.dart';
import 'package:kosan/theme.dart';

import 'home_page.dart';

class SplashPage extends StatelessWidget {
  final ButtonStyle purpleButtonStyle = TextButton.styleFrom(
    minimumSize: Size(210, 50),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
    backgroundColor: purpleColor,
    padding: EdgeInsets.all(0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: FittedBox(
                child: Image.asset(
                  'assets/Jempol.png',
                  height: 350,
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 56,
                  width: 265,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Papah.png'))),
                ),
                SizedBox(
                  height: 24,
                ),
                Text('Temukan Kosan Yang anda inginkan',
                    style: blackTextStyle.copyWith(fontSize: 23)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Stop membuang banyak waktu \n Pada tempat yang tidak habitabel',
                  style: greyTextStyle.copyWith(fontSize: 15),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                    width: 200,
                    height: 48,
                    child: TextButton(
                      style: purpleButtonStyle,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text(
                        "Explore Now",
                        style: whiteTextStyle.copyWith(fontSize: 17),
                      ),
                    )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

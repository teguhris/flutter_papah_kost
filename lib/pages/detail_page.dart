import 'package:flutter/material.dart';
import 'package:kosan/widgets/facility_item.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class DetailPage extends StatelessWidget {
  final ButtonStyle purpleButtonStyle = TextButton.styleFrom(
    minimumSize: Size(210, 50),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    backgroundColor: purpleColor,
    padding: EdgeInsets.all(0),
  );

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw (url);
    }
  }

  _launchWhatsApp() async {
  final link = WhatsAppUnilink(
    phoneNumber: '+62-85156852190',
    text: "Halo Saya Teguh Mau Pesan Kosan",
  );
  await launch('$link');
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                Image.asset('assets/kost2.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover),
                ListView(
                  children: [
                    SizedBox(
                      height: 300,
                    ),
                    Container(
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(30)),
                            color: whiteColor),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //NOTE TITLE
                            SizedBox(height: 30),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: edge - 2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Kosan Bu Encum',
                                        style: blackTextStyle.copyWith(
                                            fontSize: 21),
                                      ),
                                      SizedBox(height: 2),
                                      Text.rich(TextSpan(
                                          text: 'Rp. 750000',
                                          style: purpleTextStyle.copyWith(
                                              fontSize: 16),
                                          children: [
                                            TextSpan(
                                              text: '/bulan',
                                              style: greyTextStyle.copyWith(
                                                  fontSize: 16),
                                            )
                                          ])),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/Icon_star.png',
                                          width: 20),
                                      SizedBox(width: 2),
                                      Image.asset('assets/Icon_star.png',
                                          width: 20),
                                      SizedBox(width: 2),
                                      Image.asset('assets/Icon_star.png',
                                          width: 20),
                                      SizedBox(width: 2),
                                      Image.asset('assets/Icon_star.png',
                                          width: 20),
                                      SizedBox(width: 2),
                                      Image.asset('assets/Icon_star.png',
                                          width: 20, color: Color(0xff989BA1))
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            //NOTE : MAIN FACILITIES
                            Padding(
                                padding: EdgeInsets.only(left: edge),
                                child: Text('Fasilitas: ',
                                    style:
                                        blackTextStyle.copyWith(fontSize: 16))),
                            SizedBox(height: 12),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: edge),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FacilityItem(
                                        name: '\nDapur',
                                        imageUrl: 'assets/icon_bar.png',
                                        total: 2),
                                    FacilityItem(
                                        name: '\nKamar Tidur',
                                        imageUrl: 'assets/icon_bed.png',
                                        total: 8),
                                    FacilityItem(
                                        name: '\nLemari',
                                        imageUrl: 'assets/icon_lemari.png',
                                        total: 1),
                                  ],
                                )),
                            SizedBox(height: 25),

                            //NOTES  PHOTO
                            Padding(
                                padding: EdgeInsets.only(left: edge),
                                child: Text('Foto: ',
                                    style:
                                        blackTextStyle.copyWith(fontSize: 16))),
                            SizedBox(height: 12),
                            Container(
                              height: 88,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SizedBox(width: 24),
                                  Image.asset('assets/ruang_tamu.jpg',
                                      width: 100,
                                      height: 80,
                                      fit: BoxFit.cover),
                                  SizedBox(width: 18),
                                  Image.asset('assets/kamar.jpg',
                                      width: 100,
                                      height: 80,
                                      fit: BoxFit.cover),
                                  SizedBox(width: 18),
                                  Image.asset('assets/dapur.jpg',
                                      width: 100,
                                      height: 80,
                                      fit: BoxFit.cover),
                                  SizedBox(width: 18),
                                  Image.asset('assets/toilet.jpg',
                                      width: 100,
                                      height: 80,
                                      fit: BoxFit.cover),
                                  SizedBox(width: 18),
                                ],
                              ),
                            ),
                            SizedBox(height: 25),
                          ],
                        )),

                    //NOTES  LOCATION

                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Alamat: ',
                                style: blackTextStyle.copyWith(fontSize: 16)),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('JL Kapa Sukses no 28\n Jakarta ',
                                    style: regularTextStyle.copyWith(
                                        fontSize: 16)),
                                InkWell(
                                  onTap:(){
                                    _launchUrl('https://www.google.co.id/maps/place/Lokasi+Anda/@-6.2487952,106.9940565,15z/data=!4m12!1m6!3m5!1s0x2e698d17f3ce7173:0x8658eb0c22f7e016!2sLokasi+Anda!8m2!3d-6.248788!4d107.002814!3m4!1s0x2e698d17f3ce7173:0x8658eb0c22f7e016!8m2!3d-6.248788!4d107.002814');

                                  },
                                    child: Image.asset('assets/icon_map.png',
                                        width: 40))
                              ],
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: edge),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: TextButton(
                          style: purpleButtonStyle,
                          onPressed: () {
                          _launchWhatsApp();
                          },
                          child: Text(
                            "Pesan Sekarang",
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/btn_back.png',
                          width: 40,
                        ),
                      ),
                      Image.asset(
                        'assets/btn_wishlist.png',
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}

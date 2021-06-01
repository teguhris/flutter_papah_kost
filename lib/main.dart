import 'package:flutter/material.dart';
import 'package:kosan/pages/splash_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:kosan/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 4)),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return MaterialApp(home: Splash());
          } else {
            return MaterialApp(
                debugShowCheckedModeBanner: false, home: SplashPage());
          }
        });
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: purpleColor,
      body: Center(
        child: Image.asset('assets/image_splash.png',width:300),
      ),
    );
  }
}

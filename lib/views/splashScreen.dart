import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'homePage.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logoWidth:150 ,
          durationInSeconds: 3,
          backgroundColor: Colors.amber,
          navigator: const Home(),
          logo: Image.asset('assets/images/logo.png')),
    );
  }
}

import 'dart:async';

import 'package:e_commerce/Screens/IntroScreens/IntroScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => IntroScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFE2550),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Logo.png'),
          ],
        ),
      ),
    );
  }
}

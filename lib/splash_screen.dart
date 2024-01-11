import 'dart:async';

import 'package:firsttest/const/color_utils.dart';
import 'package:firsttest/const/image.dart';
import 'package:firsttest/homepage.dart';
// import 'package:firsttest/tes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    // Future.delayed(Duration(seconds: 2)).whenComplete(() => KatingTest());
    Timer(Duration(seconds: 2), () {
      Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=> HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Image.asset(logo),
      ),
    );
  }
}
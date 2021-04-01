import 'dart:async';

import 'package:flutter/material.dart';
import 'package:married/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 300.0,
            width: 300.0,
            child: Image.asset('assets/images/logo.png')),
      ),
    );
  }

  splashScreen() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_){
            return HomeScreen();
          }));
    });
  }

}

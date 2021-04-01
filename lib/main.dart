import 'package:flutter/material.dart';
import 'package:married/screen/home_screen.dart';

import 'intro/spalash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wedding',
      theme: ThemeData(
      ),
      home: SplashScreen(),
    );
  }
}

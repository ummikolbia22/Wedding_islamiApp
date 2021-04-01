import 'package:flutter/material.dart';
import 'package:married/screen/menu_content.dart';
import 'package:married/wedding/list_wedding.dart';

import 'header_content.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderContent(),
            ContentMenu(),
            ListWedding(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:married/models/wedding.dart';

class ContentAkad extends StatelessWidget {
  final Wedding title;

  const ContentAkad({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  title.descrip,textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),

            ]
        ),
      ),
    );
  }
}
